setwd("D://big_data")


# 获取路径下的所有文件
files <- list.files(path = folder_path, full.names = TRUE)

# 初始化一个空的 data.frame
merged_data <- data.frame()

library(tools)
library(readxl)

# 使用 for 循环读取并合并数据
for (file in files) {
    data <- read.csv(file)  
    merged_data <- rbind(merged_data, data)
  }


# 输出合并后的数据
print(merged_data)

write.csv(merged_data, file = "merged_data.csv", row.names = FALSE)


#apply替换for
#bigdata <- function(file_path){
#  data <- read.csv(file)  # 使用 read_excel 函数读取Excel文件
#  merged_data <- rbind(merged_data, data)
#  return(data)
#}

#data_1 <- lapply(files, bigdata)
#data_12 <- as.data.frame(data_1)

#print(data_12)





