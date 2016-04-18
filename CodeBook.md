# Code Book

## ```run_analysis.R``` and its variables

-	activity_labels: Variable loaded from ```activity_labels.txt``` file.
-	features: Variable loaded from ```features.txt``` file.
-	subject_test: Variable loaded from ```subject_test.txt``` file.
-	x_test: Variable loaded from ```x_test.txt``` file.
-	y_test: Variable loaded from ```y_test.txt``` file.
-	subject_train: Variable loaded from ```subject_train.txt``` file.
-	x_train: Variable loaded from ```x_train.txt``` file.
-	y_train: Variable loaded from ```y_train.txt``` file.
-	colu: It contains all measurements we need (mean and standard deviation) extracted from ```features```.
-	x: ```x_train``` and ```t_test``` fused with its names.
-	y: ```y_train``` and ```y_test``` fused with its name ```activity```, it contains all activity names.
-	subject: ```subject_train``` and ```subject_test``` fused with its name ```subject```.
-	union.4: It contains ```x```, ```y``` and ```subject``` fused.
-	union.5: Information grouped by ```subject``` and ```activity```, here we can find the mean measurements for each activity and each subject..
