db.products.insertMany([
    {
        "name":"Iphone5",
        "price":200,
        "availability":true,
        "description":"Black colour, 4-inch display"
    },

    {
        "name":"Iphone6",
        "price":400,
        "availability":true,
        "description":"Gold colour, 5.3-inch display"
    },

    {
        "name":"Iphone8",
        "price":700,
        "availability":true,
        "description":"Rose Gold colour, 6-inch display"
    }
])

db.category.insertMany([
    {
        "name":"Laptops and PC's",
        "description":"Category where yo can find laptops an PC's"
    },

    {
        "name":"Books",
        "description":"Category with books"
    },

    {
        "name":"Smartphones",
        "description":"Category with smartphones"
    },

    {
        "name":"Sport and Hobby",
        "description":"Category where you can find some stuff for your hobby or sport activities"
    }
])

db.manufacture.insertMany([
    {
        "name":"Apple Inc."
    },
    {
        "name":"Amazon"
    },
    {
        "name":"Asos"
    },
    {
        "name":"Asus"
    },
    {
        "name":"Nike"
    },
    {
        "name":"Google"
    },
    {
        "name":"LG"
    }
])

db.customer.insertMany([
  {
    "first_name":"John",
    "last_name":"Wick",
    "login":"john213",
    "password":"advisory12",
    "contacts":"johnwick@gmail.com",
    "date_of_registration": new Date('2018-09-01'),
    "balance": 1000
  },
  {
    "first_name":"Harry",
    "last_name":"Potter",
    "login":"highaf420",
    "password":"smweedmkmegreed",
    "contacts":"ggwp12cat@gmail.com",
    "date_of_registration": new Date('2019-02-07'),
    "balance": 300
  },
  {
    "first_name":"Sam",
    "last_name":"Armstrong",
    "login":"samarm",
    "password":"hgoteedw",
    "contacts":"samarm@gmail.com",
    "date_of_registration": new Date('2019-04-01'),
    "balance": 3000
  },
  {
    "first_name":"Walter",
    "last_name":"White",
    "login":"neponyal",
    "password":"kavooo",
    "contacts":"walteralbuquerque@gmail.com",
    "date_of_registration": new Date('2019-03-07'),
    "balance": 120
  }
])

db.basket_order.insertMany([
  {
    "amount":2,
  },
  {
    "amount":1
  },
  {
    "amount":4,
  },
  {
    "amount":3,
  },
  {
    "amount":2
  },
  {
    "amount":1
  },
  {
    "amount":3
  }
])

db.basket.insertMany([
  {
    "price_of_order":105,
    "delivery_method":" by Air",
    "payment_method":"Credit card",
    "comment":"White colour",
    "date_of_order": new Date('2019-03-12')
  },
  {
    "price_of_order":1500,
    "delivery_method":"Fed-ex",
    "payment_method":"Cash",
    "date_of_order": new Date('2019-02-14')
  },
  {
    "price_of_order":300,
    "delivery_method":"New Post",
    "payment_method":"Cash",
    "comment":"Black colour",
    "date_of_order": new Date('2019-03-03')
  },
  {
    "price_of_order":1200,
    "delivery_method":"New Post",
    "payment_method":"Credit card",
    "date_of_order": new Date('2019-03-04')
  },
  {
    "price_of_order":1000,
    "delivery_method":"Fed-ex",
    "payment_method":"Credit card",
    "comment":"White colour",
    "date_of_order": new Date('2019-03-03')
  },
  {
    "price_of_order":105,
    "delivery_method":"Air",
    "payment_method":"Credit card",
    "date_of_order": new Date('2019-02-09')
  },
  {
    "price_of_order":400,
    "delivery_method":"Air",
    "payment_method":"Cash",
    "comment":"Blue colour",
    "date_of_order": new Date('2019-02-13')
  }
])

db.benefit.insertMany([
  {
    "discount":10
  },
  {
    "discount":3
  },
  {
    "discount":15
  },
  {
    "discount":50
  },
  {
    "discount":5
  }
])

db.benefit_order.insertMany([
  {
    "code":129393929389124,
    "date_of_expiration": new Date('2020-01-01')
  },
  {
    "code":429493943449124,
    "date_of_expiration": new Date('2025-01-01')
  },
  {
    "code":334449394438434,
    "date_of_expiration": new Date('2019-01-04')
  },
  {
    "code":1123123252341958,
    "date_of_expiration": new Date('2020-01-01')
  },
  {
    "code":22923434552367886,
    "date_of_expiration": new Date('2023-07-05')
  }
])
