# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160808194309) do

  create_table "Conditions", id: false, force: :cascade do |t|
    t.uuid     "ConditionKey",                                    null: false
    t.string   "Name",         limit: 128,                        null: false
    t.text     "Description",  limit: 2147483647,                 null: false
    t.boolean  "Deleted",                         default: false, null: false
    t.datetime "CreatedDate"
    t.datetime "UpdatedDate"
    t.integer  "Sort",         limit: 4,          default: 0,     null: false
  end

  create_table "ConsultConditions", id: false, force: :cascade do |t|
    t.uuid     "ConsultConditionKey",                 null: false
    t.uuid     "ConsultKey",                          null: false
    t.uuid     "ConditionKey",                        null: false
    t.boolean  "Deleted",             default: false, null: false
    t.datetime "CreatedDate"
    t.datetime "UpdatedDate"
  end

  create_table "ConsultDiagnoses", id: false, force: :cascade do |t|
    t.uuid     "ConsultDiagnosisKey",                                    null: false
    t.uuid     "ConsultKey",                                             null: false
    t.uuid     "SpecialistKey",                                          null: false
    t.text     "Diagnosis",           limit: 2147483647,                 null: false
    t.text     "TreatmentPlan",       limit: 2147483647,                 null: false
    t.boolean  "Deleted",                                default: false, null: false
    t.datetime "CreatedDate",                                            null: false
    t.datetime "UpdatedDate",                                            null: false
  end

  create_table "ConsultImages", id: false, force: :cascade do |t|
    t.uuid     "ConsultImageKey",                                        null: false
    t.uuid     "ConsultKey",                                             null: false
    t.binary   "Data",            limit: 2147483647,                     null: false
    t.string   "Type",            limit: 128,        default: "Consult", null: false
    t.boolean  "Deleted",                            default: false,     null: false
    t.datetime "CreatedDate"
    t.datetime "UpdatedDate"
  end

  create_table "ConsultMessages", id: false, force: :cascade do |t|
    t.uuid     "ConsultMessageKey",                                    null: false
    t.uuid     "ConsultKey",                                           null: false
    t.uuid     "ToUserKey",                                            null: false
    t.uuid     "FromUserKey",                                          null: false
    t.string   "Subject",           limit: 128,                        null: false
    t.text     "Body",              limit: 2147483647,                 null: false
    t.boolean  "Read",                                 default: false
    t.boolean  "Deleted",                              default: false, null: false
    t.datetime "CreatedDate",                                          null: false
    t.datetime "UpdatedDate",                                          null: false
  end

  create_table "ConsultPrescriptionMedicine", id: false, force: :cascade do |t|
    t.uuid     "ConsultPrescriptionMedicineKey",                                null: false
    t.uuid     "ConsultPrescriptionKey",                                        null: false
    t.string   "Medicine",                       limit: 128,                    null: false
    t.string   "Dosage",                         limit: 128,                    null: false
    t.integer  "Refills",                        limit: 4,          default: 0, null: false
    t.text     "Instructions",                   limit: 2147483647,             null: false
    t.boolean  "Deleted",                                                       null: false
    t.datetime "CreatedDate",                                                   null: false
    t.datetime "UpdatedDate",                                                   null: false
  end

  create_table "ConsultPrescriptions", id: false, force: :cascade do |t|
    t.uuid     "ConsultPrescriptionKey",             null: false
    t.uuid     "ConsultKey",                         null: false
    t.uuid     "SpecialistKey",                      null: false
    t.string   "Pharmacy",               limit: 256, null: false
    t.boolean  "Deleted",                            null: false
    t.datetime "CreatedDate",                        null: false
    t.datetime "UpdatedDate",                        null: false
  end

  create_table "ConsultRequests", id: false, force: :cascade do |t|
    t.uuid     "ConsultRequestKey",                                   null: false
    t.uuid     "ConsultKey",                                          null: false
    t.uuid     "OrganizationKey"
    t.uuid     "SpecialistKey"
    t.string   "Status",            limit: 128, default: "Requested", null: false
    t.boolean  "Deleted",                       default: false,       null: false
    t.datetime "CreatedDate"
    t.datetime "UpdatedDate"
  end

  create_table "ConsultSymptoms", id: false, force: :cascade do |t|
    t.uuid     "ConsultSymptomKey",                 null: false
    t.uuid     "ConsultKey",                        null: false
    t.uuid     "SymptomKey",                        null: false
    t.boolean  "Deleted",           default: false, null: false
    t.datetime "CreatedDate"
    t.datetime "UpdatedDate"
  end

  create_table "Consults", id: false, force: :cascade do |t|
    t.uuid     "ConsultKey",                                                      null: false
    t.uuid     "UserKey",                                                         null: false
    t.uuid     "PatientKey"
    t.string   "ShortDescription",             limit: 256,                        null: false
    t.text     "Summary",                      limit: 2147483647,                 null: false
    t.bigint   "ConsultDate",                  limit: 8,                          null: false
    t.boolean  "Deleted",                                         default: false, null: false
    t.datetime "CreatedDate"
    t.datetime "UpdatedDate"
    t.text     "HowLongDescription",           limit: 2147483647
    t.text     "BodyLocationDescription",      limit: 2147483647
    t.text     "SimilarPriorDescription",      limit: 2147483647
    t.text     "CurrentlyTreatingDescription", limit: 2147483647
  end

  create_table "DiagnosticCodes", id: false, force: :cascade do |t|
    t.uuid     "DiagnosticCodeKey",                                    null: false
    t.string   "Code",              limit: 128,                        null: false
    t.text     "Description",       limit: 2147483647
    t.boolean  "Deleted",                              default: false, null: false
    t.datetime "CreatedDate"
    t.datetime "UpdatedDate"
    t.boolean  "Default",                              default: false
  end

  create_table "ErrorLog", id: false, force: :cascade do |t|
  end

  create_table "MedicalHistory", id: false, force: :cascade do |t|
    t.uuid     "MedicalHistoryKey",                             null: false
    t.string   "Name",              limit: 512,                 null: false
    t.boolean  "RequiresInput",                 default: false, null: false
    t.integer  "Sort",              limit: 4,   default: 0,     null: false
    t.boolean  "Deleted",                       default: false, null: false
    t.datetime "CreatedDate"
    t.datetime "UpdatedDate"
  end

  create_table "Medication", id: false, force: :cascade do |t|
    t.uuid     "MedicationKey",                                    null: false
    t.string   "Name",          limit: 128,                        null: false
    t.text     "Description",   limit: 2147483647
    t.string   "Dosage",        limit: 128
    t.integer  "Refills",       limit: 4
    t.boolean  "Deleted",                          default: false, null: false
    t.datetime "CreatedDate"
    t.datetime "UpdatedDate"
    t.boolean  "Default",                          default: false
  end

  create_table "Organizations", id: false, force: :cascade do |t|
    t.uuid     "OrganizationKey",                             null: false
    t.string   "Name",            limit: 128,                 null: false
    t.string   "Address",         limit: 128
    t.string   "City",            limit: 128
    t.string   "State",           limit: 128
    t.string   "PostalCode",      limit: 128
    t.string   "Phone",           limit: 128
    t.string   "Email",           limit: 128
    t.boolean  "Deleted",                     default: false, null: false
    t.datetime "CreatedDate"
    t.datetime "UpdatedDate"
    t.boolean  "Default",                     default: false
  end

  create_table "PatientImages", id: false, force: :cascade do |t|
    t.uuid     "PatientImageKey",                                        null: false
    t.uuid     "PatientKey",                                             null: false
    t.binary   "Data",            limit: 2147483647,                     null: false
    t.string   "Type",            limit: 128,        default: "Consult", null: false
    t.boolean  "Deleted",                            default: false,     null: false
    t.datetime "CreatedDate"
    t.datetime "UpdatedDate"
  end

  create_table "Patients", id: false, force: :cascade do |t|
    t.uuid     "PatientKey",                              null: false
    t.string   "FirstName",   limit: 128,                 null: false
    t.string   "LastName",    limit: 128,                 null: false
    t.string   "Address",     limit: 128,                 null: false
    t.string   "City",        limit: 128,                 null: false
    t.string   "State",       limit: 128,                 null: false
    t.string   "PostalCode",  limit: 128,                 null: false
    t.string   "Phone",       limit: 128,                 null: false
    t.string   "Email",       limit: 128,                 null: false
    t.boolean  "Deleted",                 default: false, null: false
    t.datetime "CreatedDate"
    t.datetime "UpdatedDate"
    t.bigint   "DOB",         limit: 8
    t.uuid     "UserKey"
  end

  create_table "Permissions", id: false, force: :cascade do |t|
  end

  create_table "RolePermissions", id: false, force: :cascade do |t|
  end

  create_table "Roles", id: false, force: :cascade do |t|
  end

  create_table "Subscriptions", id: false, force: :cascade do |t|
  end

  create_table "Symptoms", id: false, force: :cascade do |t|
    t.uuid     "SymptomKey",                                     null: false
    t.string   "Name",        limit: 128,                        null: false
    t.text     "Description", limit: 2147483647,                 null: false
    t.boolean  "Deleted",                        default: false, null: false
    t.datetime "CreatedDate"
    t.datetime "UpdatedDate"
    t.integer  "Sort",        limit: 4,          default: 0,     null: false
  end

  create_table "UserMedicalHistory", id: false, force: :cascade do |t|
    t.uuid     "UserMedicalHistoryKey",                                    null: false
    t.uuid     "UserKey",                                                  null: false
    t.uuid     "MedicalHistoryKey",                                        null: false
    t.boolean  "Selected",                                 default: false, null: false
    t.text     "Description",           limit: 2147483647
    t.boolean  "Deleted",                                  default: false, null: false
    t.datetime "CreatedDate"
    t.datetime "UpdatedDate"
  end

  create_table "UserPermissions", id: false, force: :cascade do |t|
  end

  create_table "UserPharmacy", id: false, force: :cascade do |t|
    t.uuid     "UserPharmacyKey",                                    null: false
    t.uuid     "UserKey",                                            null: false
    t.uuid     "PharmacyKey"
    t.string   "Name",            limit: 256
    t.text     "Address",         limit: 2147483647
    t.boolean  "Deleted",                            default: false, null: false
    t.datetime "CreatedDate"
    t.datetime "UpdatedDate"
  end

  create_table "UserRoles", id: false, force: :cascade do |t|
  end

  create_table "Users", primary_key: "UserKey", force: :cascade do |t|
    t.string   "UserName",         limit: 128,                        null: false
    t.text     "Password",         limit: 2147483647
    t.string   "SessionID",        limit: 128
    t.datetime "SessionExpires"
    t.string   "FirstName",        limit: 128
    t.string   "LastName",         limit: 128
    t.string   "EmailAddress",     limit: 128
    t.string   "Phone",            limit: 128
    t.datetime "LastLoginDate"
    t.datetime "LastActivityDate"
    t.boolean  "Approved"
    t.boolean  "Deleted",                             default: false, null: false
    t.datetime "CreatedDate"
    t.datetime "UpdatedDate"
    t.boolean  "IsSpecialist",                        default: false
    t.uuid     "OrganizationKey"
    t.bigint   "DOB",              limit: 8
  end

  create_table "Users", primary_key: "UserKey", force: :cascade do |t|
    t.string   "UserName",         limit: 128,                        null: false
    t.text     "Password",         limit: 2147483647
    t.string   "SessionID",        limit: 128
    t.datetime "SessionExpires"
    t.string   "FirstName",        limit: 128
    t.string   "LastName",         limit: 128
    t.string   "EmailAddress",     limit: 128
    t.string   "Phone",            limit: 128
    t.datetime "LastLoginDate"
    t.datetime "LastActivityDate"
    t.boolean  "Approved"
    t.boolean  "Deleted",                             default: false, null: false
    t.datetime "CreatedDate"
    t.datetime "UpdatedDate"
    t.boolean  "IsSpecialist",                        default: false
    t.uuid     "OrganizationKey"
    t.bigint   "DOB",              limit: 8
  end

end
