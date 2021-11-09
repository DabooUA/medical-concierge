Doctors.create!([{
  id: 1,
  first_name: 'Saadia',
  last_name: 'Abbas',
  title: 'MD',
  hospital_name: 'Henry Ford Medical Center',
  address:'3500 Fifteen Mile Road
  Sterling Heights, MI 48310'
},

{ 
  id: 2,
  first_name: 'Benjamin',
  last_name: 'Abraham',
  title: 'MD',
  hospital_name: 'Henry Ford Medical Center',
  address:'22505 Allen Rd
  Woodhaven, MI 48183'
},

{ 
  id: 3,
  first_name: 'Patrick',
  last_name: 'Agunwa',
  title: 'PA',
  hospital_name: 'Henry Ford West Bloomfiled',
  address:'6777 W Maple Rd
  Internal Medicine - MLP / Private Ofc
  West Bloomfield, MI 48322'
},

{
  id: 4,
  first_name: 'Sally',
  last_name: 'Abro',
  title: 'PA',
  hospital_name: 'Henry Ford West Bloomfiled',
  address:'6777 W Maple Rd
  Internal Medicine
  West Bloomfield, MI 48322'
},

 {
  id: 5,
  first_name: 'Andrew',
  last_name: 'Adair',
  title: 'DO',
  hospital_name: 'Henry Ford Hospital',
  address:'1 Ford Place
  Family Medicine - 2E
  Detroit, MI 48202'
}])

Prescriptions.create!([{
  id: 1,
  doctor_id: 5,
  prescription_name: 'Atorvastatin',
  pharmacy_name: 'Kroger Pharmacy',
  pharmacy_address: '2905 Union Lake Rd, Commerce Charter Twp, MI 48382',
  patient_id: '1',
  prescription_date: '01/20/2020'
},

{
  id: 2,
  doctor_id: 1,
  prescription_name: 'Levothyroxine',
  pharmacy_name: 'Walgreens Pharmacy',
  pharmacy_address: '2270 Union Lake Rd, Commerce Charter Twp, MI 48382',
  patient_id: '1',
  prescription_date: '04/10/2020'
},

{
  id: 3,
  doctor_id: 4,
  prescription_name: 'Lisinopril',
  pharmacy_name: 'CVS Pharmacy',
  pharmacy_address: '1325 E Commerce Rd, Commerce Charter Twp, MI 48382',
  patient_id: '1',
  prescription_date: '03/5/2020'
},

{
  id: 4,
  doctor_id: 3,
  prescription_name: 'Metformin',
  pharmacy_name: 'CVS Pharmacy',
  pharmacy_address: '1325 E Commerce Rd, Commerce Charter Twp, MI 48382',
  patient_id: '2',
  prescription_date: '10/20/2020'
},

{
  id: 5,
  doctor_id: 1,
  prescription_name: 'Albuterol',
  pharmacy_name: 'Walgreens Pharmacy',
  pharmacy_address: '2270 Union Lake Rd, Commerce Charter Twp, MI 48382',
  patient_id: '2',
  prescription_date: '06/1/2021'
},

{
  id: 6,
  doctor_id: 2,
  prescription_name: 'Omeprazole',
  pharmacy_name: 'Walgreens Pharmacy',
  pharmacy_address: '2270 Union Lake Rd, Commerce Charter Twp, MI 48382',
  patient_id: '2',
  prescription_date: '12/20/2020'
},

{
  id: 7,
  doctor_id: 3,
  prescription_name: 'Simvastatin',
  pharmacy_name: 'Kroger Pharmacy',
  pharmacy_address: '2905 Union Lake Rd, Commerce Charter Twp, MI 48382',
  patient_id: '3',
  prescription_date: '09/4/2021'
},

{
  id: 8,
  doctor_id: 4,
  prescription_name: 'Losartan',
  pharmacy_name: 'Kroger Pharmacy',
  pharmacy_address: '2905 Union Lake Rd, Commerce Charter Twp, MI 48382',
  patient_id: '3',
  prescription_date: '05/15/2021'
},

{
  id: 9,
  doctor_id: 5,
  prescription_name: 'Carvedilol',
  pharmacy_name: 'Kroger Pharmacy',
  pharmacy_address: '2905 Union Lake Rd, Commerce Charter Twp, MI 48382',
  patient_id: '3',
  prescription_date: '10/23/2021'
},

{
  id: 10,
  doctor_id: 1,
  prescription_name: 'Cyclobenzaprine',
  pharmacy_name: 'Kroger Pharmacy',
  pharmacy_address: '2905 Union Lake Rd, Commerce Charter Twp, MI 48382',
  patient_id: '1',
  prescription_date: '08/12/2021'
}])