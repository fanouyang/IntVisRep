# A *IntVisRep* tool 

## Introduction
This *IntVisRep* tool demonstrated three types of interactive, visualized representations: interaction networks (reflecting social network analysis results), keyword flows (reflecting text mining results), and temporal online presences (reflecting content analysis results). Together, the IntVisRep tool demonstrated online collaborative discussions from multiple perspectives (e.g., social, lexical, cognitive).

First, the interactive social networks demonstrated participants’ interactions (i.e., replies and comments) during online discussions; second, the keyword flows demonstrated the sequential relations of frequently-used keywords (i.e., one word followed the other); third, the temporal representation demonstrated changes of participants’ social, cognitive, facilitative contributions during discussions (Garrison, Anderson, & Archer, 2000) over time. 

Specifically, social interaction network - showing the structure of interaction network and participant position in the network - was designed to help participants become aware of the individual and class interaction processes. The keyword flow representation - showing the sequential relations between concepts or ideas - was designed to help participants become more aware of their discourse in collaborative inquiry. The online presence representation - showing participants’ social, cognitive, facilitative contributions from a temporal perspective - was designed to help participants become more aware of their different engagement dimensions during different time points in discussions. 

## Use of *IntVisRep*
I demonstrated *IntVisRep* through a [ShinyApp](https://fanouyang.shinyapps.io/IntVisRep/), where users can choose a weekly discussion at the sidebar to show the three interactive representations for each weekly discussion. A brief [video]() introduced the use of this tool. The data used to demonstrate in *IntVisRep* was from a completely online, undergraduate-level course titled “*Foundations of Computer Applications for Business and Education*”, offered at a midwestern university in US. I was the online instructor for this course; 19 students enrolled in this course. For this demo, I randomly selected three class-level discussions: the first week’s introduction discussion, week 7’s website building and sharing discussion, and the week 8’s Twitter style writing discussion. Data can be assessed from this [repository](https://github.com/fanouyang/IntVisRep).

### 1. Interaction networks
In the first representation *interactive networks*, users can select each participant's ID (i.e., the teacher and students) to view their interaction with others and their position in the network. Direct interactions would be highlighted when a participant was selected. Also, users can select groups to show group members' interaction in the discussions. Note that student groups were assigned by the instructor based on their shared interets (the group-level discussions were not shown in this demo). Users can mouse over each participant to see more information.

### 2. Keyword flows 
In the second representation *keyword flows*, users can mouse over the keyword flow to see the source and target keywords as well as the frequency that one keywords followed the other. The frequently-used keywords were captured by text mining techniques in advance.

### 3. Temporal online presences
In the third representation *temporal online presences*, users can view the changes of participants' online presences (i.e., social, cognitive, and facilitative) over time. You can mouse over each participant to see the information about name, time point, and online presence contribution. Also, you can double click one participant in the legend area to only show this participant's online presences. The online presences for each participants were analyzed through content analysis techniques according to Garrison, Anderson, and Archer (2000) in advance.

## Future design & research goals
Empirical studies showed that learning analytics tools, representations and reports can aid information navigation, sense-making, and decision-making (Chen et al., 2018; Dado & Bodemer, 2018). I plan to embed this *IntVisRep* tool, in the form of ShinyApp or interactive html, in my future online courses (hosted in Canvas or Moodle), in order to examine whether and how the use of this tool would influence participants' social interaction, topic contribution, and online presence during online collaborative discussions. Since the current version of this tool included some intensive post-analysis processes which can only provide delayed information to users, in the future design, I plan to take advantage of Canvas or Moodle API to capture real-time data and generate interactive representations directly.

## Bibliograph
Chen, B., Chang, Y. H., Ouyang, F., & Zhou, W. Y. (2018). Fostering discussion engagement through social learning analytics. *The Internet and Higher Education, 37*, 21–30.

Dado, M., & Bodemer, D. (2018). Social and cognitive group awareness to aid argumentation about socially acute questions on social media. In J., Kay, and R. Luckin (Eds.) *Rethinking Learning in the Digital Age: Making the Learning Sciences Count, 13th International Conference of the Learning Sciences (ICLS) 2018, Volume 1*. (pp. 456-463). London, UK: International Society of the Learning Sciences.

Garrison, D. R., Anderson, T., & Archer, W. (2000). Critical inquiry in a text-based environment: Computer conferencing in higher education. *The Internet and Higher Education, 2*(2), 87-105. 


