class EnrollmentsController < ApplicationController
	before_action :authenticate_user!

	def create
		
		if current_course.premium?
			# Amount in cents
			@amount = (current_course.cost * 100).to_i

			customer = Stripe::Customer.create(
			  :email => current_user.email,
		    :card  => params[:stripeToken]
		  )

		  charge = Stripe::Charge.create(
			  :customer    => customer.id,
			  :amount      => @amount,
			  :description => 'Flixter course purchase',
		    :currency    => 'usd'
		  )
		end

	  current_user.enrollments.create(:course => current_course)
		redirect_to course_path(current_course)

		rescue Stripe::CardError => e
		  flash[:error] = e.message
		  redirect_to course_path(current_course)

	end

	def destroy
		# byebug
		# @enrollment = current_user.enrolled_courses.find(current_course.id)
		# Enrollment.delete(@enrollment)
		current_user.enrolled_courses.delete(current_course)
		redirect_to course_path(current_course)
	end

	private

	def current_course
		@current_course ||= Course.find(params[:course_id])
	end

	def enrollment_params
		params.require(:course_id)
	end

end
