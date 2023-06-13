take_quiz: question_1 question_2
	ct $^ > $@
SGD_features.tab:
	wget http://data.biostarhandbook.com/data/SGD_features.tab

question_1: SGD_features.tab
#How many lines does this file contain?
	echo "question 1" > question_1
	wc -l SGD_features.tab >> question_1

question_2: SGD_features.tab
#How many lines match the pattern "ORF"?
	echo "question 2" > question_2
	grep -c "ORF" SGD_features.tab >> question_2