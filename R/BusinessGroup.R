#' BusinessGroup生成器界面
#'
#' @param colTitles  主页标题
#' @param widthRates 左右比例
#' @param func_left 左函数
#' @param func_right 右函数
#' @param tabTitle 标题
#' @param func_bottom  下面一栏
#'
#' @return 返回值
#' @import tsui
#' @export
#'
#' @examples
#' BusinessGroupUI()
BusinessGroupUI <- function(tabTitle ='销售订单业务组更新',
                            colTitles =c('操作区域','操作区域','显示区域'),
                            widthRates =c(6,6,12),
                            func_left = BusinessGroupUI_left,
                            func_right =BusinessGroupUI_right,
                            func_bottom = BusinessGroupUI_bottom
) {

  #三栏式设置，可以复制
  res = tsui::uiGen3(tabTitle = tabTitle,colTitles =colTitles,widthRates = widthRates,func_left = func_left,func_right = func_right,func_bottom = func_bottom )
  return(res)

}





#' 请输入文件
#'
#' @return 返回值
#' @export
#'
#' @examples
#' BusinessGroupUI_left()
BusinessGroupUI_left <- function() {


  res <- tagList(
    tsui::uiTemplate(templateName = '销售订单业务组更新模板'),
    tsui::mdl_file(id = 'file_BusinessGroup', label = '上传需要更新的数据')


  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' BusinessGroupUI_bottom()
BusinessGroupUI_right <- function() {
  res <- tagList(

    shiny::actionButton(inputId = 'btn_BusinessGroup_view' , label = '预览文件数据'),
    shiny::actionButton(inputId = 'btn_BusinessGroup_update' , label = '更新物料库存数据')
  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' BusinessGroupUI_bottom()
BusinessGroupUI_bottom <- function() {
  res <- tagList(
    tsui::uiScrollX(tsui::mdl_dataTable(id = 'dt_BusinessGroup_res'))

  )
  return(res)

}
