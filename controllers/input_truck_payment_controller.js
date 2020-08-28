var express = require("express");
var session = require('express-session');
var router = express.Router();
var path = require('path');

// mysql connection
var connection = require("../db_connection/mysql_connection");

// caching disabled for every route
router.use(function (req, res, next) {
    res.set('Cache-Control', 'no-cache, private, no-store, must-revalidate, max-stale=0, post-check=0, pre-check=0');
    next();
});

router.use(session({
    secret: 'secret',
    resave: true,
    saveUninitialized: true
}));

var authUser = function (req, res, next) {
    if (req.session && req.session.user === "user1" && req.session.customer)
        return next();
    else
        return res.sendStatus(401);
};

var authAdmin = function (req, res, next) {
    if (req.session && req.session.user === "adminSession" && req.session.admin)
        return next();
    else
        return res.sendStatus(401);
};

router.get('/logout', function (req, res, next) {
    if (req.session) {
        // delete session object
        req.session.destroy(function (err) {
            if (err) {
                return next(err);
            } else {
                return res.redirect('/');
            }
        });
    }
});

router.post('/auth', function (request, response) {
    var username = request.body.username;
    var password = request.body.password;

    if (username === "user1" && password === "user1") {
        request.session.customer = true;
        request.session.user = "user1";

        response.redirect('/customer');
    }
    else if (username === "admin1" && password === "admin1") {
        request.session.admin = true;
        request.session.user = "adminSession";

        response.redirect('/BC_Deduction');
    }
    else if (username === "admin2" && password === "admin2") {
        request.session.admin = true;
        request.session.user = "adminSession";

        response.redirect('https://www.google.com');
    }
    else {
        response.send('Incorrect Username and/or Password!');
    }
    response.end();
});

// Use Handlebars to render the main index.html page.
router.get("/BC_Deduction", authAdmin, function (req, res) {
    connection.query("SELECT * FROM information_owner_db;", function (err, data) {
        if (err) {
            return res.status(500).end();
        }

        else if (req.session.user === "adminSession" || req.session.admin) {
            res.render("index", { b_division: data });
        }
        else {
            res.send('Please login to view this page!');
        }

    });
});

// Use Handlebars to render the main master_division.handlebars page.
router.get("/input_truck_payment", authAdmin, function (req, res) {
    connection.query("SELECT * FROM input_truck_payment_db;", function (err, data) {
        if (err) {
            return res.status(500).end();
        }

        else if (req.session.user === "adminSession" || req.session.admin) {
            res.render("input_truck_payment_search", { b_division: data });
        }
        else {
            res.send('Please login to view this page!');
        }


    });
});

// Use Handlebars to render the create_b_division.handlebars page.
router.get("/input_pages/create_input_truck_payment/:truckNo", function (req, res) {
    connection.query("SELECT * FROM bc_deduction_db.information_truck_db where id in (SELECT MAX(id) FROM bc_deduction_db.information_truck_db where information_truck_no = ?)", [req.params.truckNo], function (err, truckPaymentData) {
        connection.query("SELECT * FROM information_owner_db;", function (err, ownerData) {
            connection.query("SELECT * FROM information_driver_db;", function (err, driverData) {
                connection.query("SELECT * FROM information_truck_db;", function (err, truckData) {
                    connection.query("SELECT  COUNT(*) AS cnt FROM bc_deduction_db.information_truck_db where id in (SELECT MAX(id) FROM bc_deduction_db.information_truck_db where information_truck_no = ?)", [req.params.truckNo], function (err, data) {
                        if (data[0].cnt < 1) {
                            // Does not exist 
                            res.send('Truck Number does not exist!');
                            // return res.render("input_pages/error");
                        }
                        else if (req.session.user === "adminSession") {
                            res.render("input_pages/create_input_truck_payment", { truckPaymentData, ownerData, driverData, truckData });
                        };
                    });
                });
            });
        });
    });
});


// Use Handlebars to render the create_b_division.handlebars page.
// router.post("/input_pages/create_input_truck_payment/:input_truck_payment_truck_no", function (req, res) {
//     connection.query("SELECT COUNT(*) AS cnt FROM bc_deduction_db.information_truck_db where id in (SELECT MAX(id) FROM bc_deduction_db.information_truck_db where information_truck_no = ?)", [req.params.input_truck_payment_truck_no], function (err, truckPaymentData) {
//         if (err) {
//             console.log(err);
//         }
//         else {
//             if (data[0].cnt > 0) {
//                 // Already exist 
//                 return res.status(500).end();

//             } else {
//                 connection.query("SELECT * FROM information_owner_db;", function (err, ownerData) {
//                     connection.query("SELECT * FROM information_driver_db;", function (err, driverData) {
//                         connection.query("SELECT * FROM information_truck_db;", function (err, truckData) {
//                             if (err) {
//                                 return res.status(500).end();
//                             }
//                             else if (req.session.user === "adminSession") {
//                                 res.render("input_pages/create_input_truck_payment", { truckPaymentData, ownerData, driverData, truckData });
//                             };
//                         });
//                     });
//                 });
//             };
//         };
//     });
// });

// Use Handlebars to render the create_b_division.handlebars page.
// router.get("/input_pages/create_input_truck_payment/:input_truck_payment_truck_no", function (req, res) {
//     connection.query("SELECT * FROM bc_deduction_db.information_truck_db where id in (SELECT MAX(id) FROM bc_deduction_db.information_truck_db where information_truck_no = ?)", [req.params.input_truck_payment_truck_no], function (err, truckPaymentData) {
//         connection.query("SELECT * FROM information_owner_db;", function (err, ownerData) {
//             connection.query("SELECT * FROM information_driver_db;", function (err, driverData) {
//                 connection.query("SELECT * FROM information_truck_db;", function (err, truckData) {
//                     if (err) {
//                         return res.status(500).end();
//                     }
//                     else if (req.session.user === "adminSession") {
//                         res.render("input_pages/create_input_truck_payment", { truckPaymentData, ownerData, driverData, truckData });
//                     };
//                 });
//             });
//         });
//     });
// });

// Use Handlebars to render the create_b_division.handlebars page.
// router.get("/input_pages/create_input_truck_payment", function (req, res) {
//     connection.query("SELECT * FROM information_owner_db;", function (err, ownerData) {
//         connection.query("SELECT * FROM information_driver_db;", function (err, driverData) {
//             connection.query("SELECT * FROM information_truck_db;", function (err, truckData) {
//                 if (err) {
//                     return res.status(500).end();
//                 }
//                 else if (req.session.user === "adminSession") {
//                     res.render("input_pages/create_input_truck_payment", { information_owner: ownerData, information_driver: driverData, input_truck: truckData });
//                 };
//             });
//         });
//     });
// });

// Use Handlebars to render the edit_b_division.handlebars page.
router.get("/input_pages/edit_input_truck_payment/:id", function (req, res) {
    connection.query("SELECT * FROM input_truck_payment_db where id = ?", [req.params.id], function (err, truckPaymentData) {
        connection.query("SELECT * FROM information_owner_db;", function (err, ownerData) {
            connection.query("SELECT * FROM information_driver_db;", function (err, driverData) {
                connection.query("SELECT * FROM information_truck_db;", function (err, truckData) {
                    if (err) {
                        return res.status(500).end();
                    }
                    else if (req.session.user === "adminSession") {
                        res.render("input_pages/edit_input_truck_payment", { truckPaymentData, ownerData, driverData, truckData });
                    };
                });
            });
        });
    });
});

// Use Handlebars to render the delete_b_division.handlebars page.
router.get("/input_pages/delete_input_truck_payment/:id", function (req, res) {
    connection.query("SELECT * FROM input_truck_payment_db where id = ?", [req.params.id], function (err, data) {
        if (err) {
            return res.status(500).end();
        }
        else if (req.session.user === "adminSession") {
            console.log(data);
            res.render("input_pages/delete_input_truck_payment", data[0]);
        };
    });
});

// Create a new list
router.post("/input_truck_and_part_payment_list", function (req, res) {
    connection.query("INSERT INTO truck_and_part_payment_tb (truckNo, ownerId, ownerName, totalAmount, downPayment, saleDate, payWeek, total_paid_amount, balanceAmount, paidAmount, type, driverId, driverName, invoiceNo, Invoice, cr, status, desc1) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)",
        [req.body.truckNo, req.body.ownerId, req.body.ownerName, req.body.totalAmount, req.body.downPayment, req.body.saleDate, req.body.payWeek, req.body.total_paid_amount, req.body.balanceAmount, req.body.paidAmount, req.body.type, req.body.driverId, req.body.driverName, req.body.invoiceNo, req.body.invoice, req.body.cr, req.body.status, req.body.desc1], function (err, result) {
            if (err) {
                return res.status(500).end();
            }

            // Send back the ID of the new todo
            res.json({ id: result.insertId });
            console.log({ id: result.insertId });
        });
});


// Retrieve all list
router.get("/input_truck_and_part_payment_list", function (req, res) {
    connection.query("SELECT * FROM truck_and_part_payment_tb;", function (err, data) {
        if (err) {
            return res.status(500).end();
        }

        res.json(data);
    });
});

// Update a list
router.put("/input_truck_payment_list/:id", function (req, res) {
    connection.query("UPDATE input_truck_payment_db SET input_truck_payment_truck_no = ?, input_truck_payment_owner_id = ?, input_truck_payment_owner_name = ?, input_truck_payment_truck_total_amount = ?, input_truck_payment_down_payment = ?, input_truck_payment_sale_date = ?, input_truck_payment_pay_month = ?, input_truck_payment_paid_amount = ?, input_truck_payment_balance_amount = ? WHERE id = ?",
        [req.body.input_truck_payment_truck_no, req.body.input_truck_payment_owner_id, req.body.input_truck_payment_owner_name, req.body.input_truck_payment_truck_total_amount, req.body.input_truck_payment_down_payment, req.body.input_truck_payment_sale_date, req.body.input_truck_payment_pay_month, req.body.input_truck_payment_paid_amount, req.body.input_truck_payment_balance_amount, req.params.id],
        function (err, result) {
            if (err) {
                // If an error occurred, send a generic server failure
                return res.status(500).end();
            }
            else if (result.changedRows === 0) {
                // If no rows were changed, then the ID must not exist, so 404
                return res.status(404).end();
            }
            res.status(200).end();

        });
});

// Delete a list
router.delete("/input_truck_payment_list/:id", function (req, res) {
    connection.query("DELETE FROM input_truck_payment_db WHERE id = ?", [req.params.id], function (err, result) {
        if (err) {
            // If an error occurred, send a generic server failure
            return res.status(500).end();
        }
        else if (result.affectedRows === 0) {
            // If no rows were changed, then the ID must not exist, so 404
            return res.status(404).end();
        }
        res.status(200).end();

    });
});

module.exports = router;