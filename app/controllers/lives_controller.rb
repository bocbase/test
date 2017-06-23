class LivesController < ApplicationController
  before_action :set_live, only: [:show, :edit, :update, :destroy]
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
    #DBから指定期間のイベント名を取得し、インスタンス変数へ格納
    @events = Live.where(ymd:start..last)
    #DBから指定期間のライブを取得し、インスタンス変数へ格納
    @lives = getOneYearLiveList(checked_param)
    @ccc = getTest(checked_param)
  end

  def getTest(year)
    con = ActiveRecord::Base.connection
    result = con.select_rows('select event_id,title,ymd,place,main from setlists where title in (select title from lives where ymd between "' + year + '-01-01" and "' + year + '-12-31") order by event_id,ymd asc')
  end

  # GET /lives
  # GET /lives.json
  def index
    @lives = Live.all
  end

  # GET /lives/1
  # GET /lives/1.json
  def show
  end

  # GET /lives/new
  def new
    @live = Live.new
  end

  # GET /lives/1/edit
  def edit
  end

  # POST /lives
  # POST /lives.json
  def create
    @live = Live.new(live_params)

    respond_to do |format|
      if @live.save
        format.html { redirect_to @live, notice: 'Live was successfully created.' }
        format.json { render :show, status: :created, location: @live }
      else
        format.html { render :new }
        format.json { render json: @live.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lives/1
  # PATCH/PUT /lives/1.json
  def update
    respond_to do |format|
      if @live.update(live_params)
        format.html { redirect_to @live, notice: 'Live was successfully updated.' }
        format.json { render :show, status: :ok, location: @live }
      else
        format.html { render :edit }
        format.json { render json: @live.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lives/1
  # DELETE /lives/1.json
  def destroy
    @live.destroy
    respond_to do |format|
      format.html { redirect_to lives_url, notice: 'Live was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_live
      @live = Live.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def live_params
      params.require(:live).permit(:ymd, :title, :text)
    end
end
