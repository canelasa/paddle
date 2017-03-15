require 'rails_helper'

RSpec.describe Lesson, type: :model do
  it "is true when max students is less than or equal to comments" do
    sally = User.create!(email:'sally@gmail.com', password:'password')
    john = User.create!(email:'john@gmail.com', password:'password')
    lesson = Lesson.create(user: sally, name:'tennis basics', description:'fun to learn', date:'3/3/17', time:'2pm', location:'central park',
              address:'cincinnati', max_students: 2)
    comment1 = Lesson.last.comments.create(user: sally, full_name:'sally', phone_number:'3043432323', email:'cat@gmail.com', skill_level:'2')
    comment2 = Lesson.last.comments.create(user: john, full_name:'john', phone_number:'3043432323', email:'cat@gmail.com', skill_level:'2')

    expect(lesson.lesson_full?).to(eq(true))
  end
end
