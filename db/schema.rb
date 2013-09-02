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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130902135629) do

  create_table "assessments", :force => true do |t|
    t.string   "assessor_email"
    t.string   "assessment_type"
    t.datetime "date"
    t.string   "assessor_name"
    t.string   "assessor_grade"
    t.string   "assessor_gmc"
    t.string   "assessment_title"
    t.string   "assessment_description"
    t.string   "assessor_firstname"
    t.string   "assessor_lastname"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "curriculum_assessments", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "dop_id"
    t.integer  "item_id"
  end

  create_table "curriculums", :force => true do |t|
    t.datetime "year"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dops", :force => true do |t|
    t.string   "clinical_setting"
    t.string   "problem_category"
    t.string   "clinical_encouter"
    t.string   "complexity"
    t.string   "assessor_postion"
    t.string   "number_previous_assessor"
    t.string   "number_previous_trainee"
    t.integer  "understanding"
    t.integer  "consent"
    t.integer  "preparation"
    t.integer  "analalgesia"
    t.integer  "technical_ability"
    t.integer  "aseptic"
    t.integer  "seeks_help"
    t.integer  "post_procedure"
    t.integer  "communication"
    t.integer  "consideration"
    t.integer  "overall"
    t.text     "suggestions"
    t.boolean  "training"
    t.integer  "time_observation"
    t.integer  "time_feedback"
    t.string   "assessor"
    t.string   "assesser_GMC"
    t.string   "assessor_contact"
    t.string   "assessor_email"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
    t.integer  "user_id"
  end

  create_table "items", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sections", :force => true do |t|
    t.string   "title"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "curriculum_id"
    t.integer  "item_id"
  end

  create_table "users", :force => true do |t|
    t.string   "firstname"
    t.string   "surname"
    t.string   "current_post"
    t.string   "educational_supervisor"
    t.string   "clinical_supervisor"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
