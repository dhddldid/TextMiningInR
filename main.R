# Title     : TODO
# Objective : TODO
# Created by: KkuuAeong
# Created on: 2020-11-25

#KoNLP 패키지를 다운받기 위해선 JAVA 를 설치하고
# rJAVA 패키지를 설치해야한다.
install.packages("rJava")

#KoNLP 는 현재 cran에서 지워져 이렇게 설치를 해야함.
install.packages("remotes")
remotes::install_github('haven-jeon/KoNLP',upgrade = "never", INSTALL_opts=c("--no-multiarch"))

# 또는 아래와 같은 방법으로 설치
# install.packages('devtools')
# devtools::install_github('haven-jeon/KoNLP')

# How to KoNLP
# https://mran.microsoft.com/snapshot/2016-11-30/web/packages/KoNLP/vignettes/KoNLP-API.html

# If Error invalid multibyte character in parser at line 1
Sys.getlocale()
# LC_CTYPE을 .1251로 바꿔주는 명령어
Sys.setlocale("LC_CTYPE", ".1251")
# 초기설정으로 돌아가기
Sys.setlocale("LC_ALL")
# 출력문제 해결하기
Sys.setlocale("LC_ALL", "korean")

#extractNoun는 명사만 뽑아주는 함수
extractNoun("롯데마트가 판매하고 있는 흑마늘 양념 치킨이 논란이 되고 있다.")

# SimplePos90 함수는 9 개의 메인 태그만을 사용하여 설정된 KAIST 태그를 사용하여 pos 태그 된 용어를 반환합니다.
SimplePos09("롯데마트가 판매하고 있는 흑마늘 양념 치킨이 논란이 되고 있다.")
MorphAnalyzer("롯데마트가 판매하고 있는 흑마늘 양념 치킨이 논란이 되고 있다.")