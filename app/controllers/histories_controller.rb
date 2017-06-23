class HistoriesController < ApplicationController
  before_action :set_history, only: [:show, :edit, :update, :destroy]
include Common
  # GET /history
  # GET /history.json
  def top
    #DBから年リストを取得
    @nav_year_list = getContentsNavYearList(controller_name)
    #DBの結果を配列に格納
    array_year = putArray(@nav_year_list)
    #入力パラメーターが年リストにあるかチェック
    checked_param = validateParamIncludeList(params[:id],array_year)
    #YYYY-01-01..YYYY-12-31の文字列を作成
    start , last = getYearStartLast(checked_param)
    #DBから指定期間のデータを取得しインスタンス変数に格納
    @histories =  History.where(ymd:start..last)

    @japanese_date = changeDateFormat(@histories)
  end
  
  # GET /histories
  # GET /histories.json
  def index
    @histories = History.all
  end

  # GET /histories/1
  # GET /histories/1.json
  def show
  end

  # GET /histories/new
  def new
    @history = History.new
  end

  # GET /histories/1/edit
  def edit
  end

  # POST /histories
  # POST /histories.json
  def create
    @history = History.new(history_params)

    respond_to do |format|
      if @history.save
        format.html { redirect_to @history, notice: 'History was successfully created.' }
        format.json { render :show, status: :created, location: @history }
      else
        format.html { render :new }
        format.json { render json: @history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /histories/1
  # PATCH/PUT /histories/1.json
  def update
    respond_to do |format|
      if @history.update(history_params)
        format.html { redirect_to @history, notice: 'History was successfully updated.' }
        format.json { render :show, status: :ok, location: @history }
      else
        format.html { render :edit }
        format.json { render json: @history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /histories/1
  # DELETE /histories/1.json
  def destroy
    @history.destroy
    respond_to do |format|
      format.html { redirect_to histories_url, notice: 'History was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_history
      @history = History.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def history_params
      params.require(:history).permit(:ymd, :category, :text)
    end
end
