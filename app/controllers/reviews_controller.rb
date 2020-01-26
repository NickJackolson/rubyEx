class ReviewsController < ApplicationController
    def create
        @writer = Writer.find(params[:writer_id])
        @review = @writer.reviews.create(review_params)
        redirect_to writer_path(@writer)
      end
    def destroy
        @writer = Writer.find(params[:writer_id])
        @review = @writer.reviews.find(params[:id])
        @review.destroy
        redirect_to writer_path(@writer)
    end
      private
        def review_params
          params.require(:review).permit(:reviewer, :body)
        end
end
