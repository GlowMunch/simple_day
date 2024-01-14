class Api::V1::JournalsController < ApplicationController
  before_action :set_journal, only: %i[ show edit update destroy ]
  before_action :set_user, only: %i[ index show new create edit update destroy ]

  # GET /journals or /journals.json
  def index
    @journals = Journal.all
  end

  # GET /journals/1 or /journals/1.json
  def show

  end

  # GET /journals/new
  def new
    @journal = @user.journals.new
  end

  # GET /journals/1/edit
  def edit
  end

  # POST /journals or /journals.json
  def create
    @journal = @user.journals.new(journal_params)
    respond_to do |format|
      if @journal.save
        format.html { redirect_to user_journals_path(@user), notice: "Journal was successfully created." }
        format.json { render :show, status: :created, location: @journal }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @journal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /journals/1 or /journals/1.json
  def update
    respond_to do |format|
      if @journal.update(journal_params)
        format.html { redirect_to user_journals_path(@user), notice: "Journal was successfully updated." }
        format.json { render :show, status: :ok, location: @journal }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @journal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /journals/1 or /journals/1.json
  def destroy
    @journal.destroy

    respond_to do |format|
      format.html { redirect_to user_journals_path(@user), notice: "Journal was successfully destroyed." }
      format.json { head :no_content }
    end
  end

private
  # Use callbacks to share common setup or constraints between actions.
  def set_journal
    @journal = Journal.find(params[:id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  # Only allow a list of trusted parameters through.
  def journal_params
    params.require(:journal).permit(:title, :page_count, :user_id)
  end
end
