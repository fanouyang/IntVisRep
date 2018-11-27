# Interactive Representations
## introduction
This is a demo of three interactive representations (i.e., interactive network, interactive keyword sankey plot, and interactive online presence) of an undergraduate online course. This online course titled "*Foundations of Computer Applications for Business and Education*", was a completely online, undergraduate-level course offered at a midwestern university in US during a 14-week semester of fall 2015. I was the online instructor for this course, 19 students enrolled in this course from the College of Education and Human Development. This course was hosted on a social networking website called Ning. For this representation, I selected three class-level discussions within this course, which were the first week's introduction discussion, the week 7's website creation discussion, as well as the week 8's Twitter style writing discussion.

## interactive representation
Overall, through this [Shiny app] (https://fanouyang.shinyapps.io/interactive_representation/), you can choose a weekly discussion at the sidebar to show the three interactive representations for each weekly discussion.

### interactive networks
In the interactive networks, you can select each participant's ID (i.e., the teacher and students) to view their interaction with others. Direct interactions would be highlighted when you choose one participant. Also, you can select group to show group members' interaction in the class-level discussions. Note that student groups were assigned by the instructor based on their shared interets (the group-level discussions were not shown in this demo). You can mouse over each participant to see more information.

### interactive sankey plots of keywords
In the interactive sankey plots, flow of frequently-used keywords were demonstrated. You can mouse over the keyword flow to see the source and target keywords as well as the frequency between two keywords.

### interactive online presence plot
In the interactive online presence plot, you can view time series of participants' three online presences (i.e., social, cognitive, and instruction) (Garrison, Anderson, & Archer, 2000). You can mouse over each node to see the information about participant, time point, and online presence contribution. Also, you can double click each legend node to isolate this participant's online presence contribution.

## data
Selecting data for this interactive representation can be found in the data folder in this repo. 

## future research goal
I plan to embed this interactive representation, in the form of shiny app or interactive html, in my future online courses (hosted in Canvas or Moodle). The research purpose is to examine if use of this interactive representations would influence students' social interaction, topic contribution, and online presence. This research was motivated by a previous work led by Dr. Bodong Chen (Chen, Chang, Ouyang, & Zhou, 2018).

## Bibliograph
Chen, B., Chang, Y. H., Ouyang, F., & Zhou, W. Y. (2018). Fostering discussion engagement through social learning analytics. *The Internet and Higher Education, 37*, 21–30.
Garrison, D. R., Anderson, T., & Archer, W. (2000). Critical inquiry in a text-based environment: Computer conferencing in higher education. *The Internet and Higher Education, 2*(2), 87-105. 
