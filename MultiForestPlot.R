#Load package
library(meta)

#Meta-analyses
MAfplotMulti <- metabin(Int_Inj, Int_Total, C_Inj, C_Total, data = MultiMeta,
                   method = "MH", sm = "OR", random = TRUE,
                   common = FALSE, subgroup = Lab)

#Initial plot
forest(MAfplotMulti, studlab = StudyID, col.subgroup = "black",
       col.square = "grey70", col.square.lines = "grey70",
       col.diamond = "grey30", col.diamond.lines = "grey30",
       print.subgroup.name = FALSE, smlab = "",
       label.c = "Control", label.e = "Intervention", xlim = c(0.2,4),
       arrow.type = "closed")



#Final plot
FPMulti <- forest(MAfplotMulti, lty.random = NULL, studlab = StudyID, col.subgroup = "black",
       col.square = "grey70", col.square.lines = "grey70",
       col.diamond = "grey30", col.diamond.lines = "grey30",
       print.subgroup.name = FALSE, overall.hetstat = FALSE,
       overall = FALSE, test.subgroup = FALSE, smlab = "",
       label.c = "Control", label.e = "Intervention", xlim = c(0.2,4),
       arrow.type = "closed")




