class RolesController < ApplicationController

  def new
    @role = Role.new
    @games = Game.all
    @people = Person.all
  end

  def create
    @role = Role.new(role_params)
      if @role.save
        redirect_to game_path(@role.game)
      else
        @games = Game.all
        @people = Person.all
        render :new
      end
  end

  private

  def role_params
    params.require(:role).permit(:occupation, :game_id, :person_id)
  end
end