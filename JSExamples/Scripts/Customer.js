function Customer(id, firstName, lastName) {
    this.id = id;
    this.firstName = firstName;
    this.lastName = lastName;
};

Customer.prototype.toString = function () {
    return this.id + ', ' + this.firstName + ', ' + this.lastName;
};

Customer.compareCustomers = function (customer1, customer2) {
    if (customer1 == undefined && customer2 == undefined) {
        return true;
    }

    if ((customer1 == undefined && customer2 != undefined) ||
            (customer1 != undefined && customer2 == undefined)) {
        return false;
    }

    var areEqual = (customer1.id == customer2.id);
    areEqual = areEqual && (customer1.firstName == customer2.firstName);
    areEqual = areEqual && (customer1.lastName == customer2.lastName);

    return areEqual;
};