args = commandArgs(trailingOnly=TRUE)
filename = args[1]             
df = read.csv(filename)

head(df)

png("r_orig.png")
plot(df$x,df$y)
dev.off()
model = lm(y~x, data=df)

summary_stats= summary(model)

summary_stats

summary_stats$r.squared

coef(model)

coef(model)[1]

coef(model)[2]

y_predict = predict(model, df)

png("r_l.png")
plot(df$x,y_predict, xlab = "df$x", ylab = "df$y")

plot(df$x,df$y, xlab = "df$x", ylab = "df$y")
lines(df$x, y_predict)
dev.off()

