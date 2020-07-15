class MembersController < ApplicationController
    def index
        @members = Member.all

        # including associations after the comma. now they'll show up on browser/postman as linked
        render json: @members, include: [:accounts, :banks]
    end

    # show update create delete
end
