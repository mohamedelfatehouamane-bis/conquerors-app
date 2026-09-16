.class public Lcom/gpc/util/backgroundcheck/SDKBackgroundUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SDKBackgroundUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAppInForeground(Landroid/content/Context;)Z
    .locals 1

    .line 21
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "SDKActivityStatistics getCount:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/gpc/util/backgroundcheck/SDKActivityStatistics;->sharedInstance()Lcom/gpc/util/backgroundcheck/SDKActivityStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/util/backgroundcheck/SDKActivityStatistics;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SDKBackgroundUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-static {}, Lcom/gpc/util/backgroundcheck/SDKActivityStatistics;->sharedInstance()Lcom/gpc/util/backgroundcheck/SDKActivityStatistics;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gpc/util/backgroundcheck/SDKActivityStatistics;->getCount()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
