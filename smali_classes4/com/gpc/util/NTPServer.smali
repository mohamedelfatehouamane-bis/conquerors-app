.class public Lcom/gpc/util/NTPServer;
.super Lcom/instacart/library/truetime/TrueTime;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instacart/library/truetime/TrueTime;-><init>()V

    return-void
.end method

.method public static clearCachedInfo()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/instacart/library/truetime/TrueTime;->clearCachedInfo()V

    return-void
.end method


# virtual methods
.method public initialize(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x7d0

    .line 1
    invoke-virtual {p0, v0}, Lcom/instacart/library/truetime/TrueTime;->withConnectionTimeout(I)Lcom/instacart/library/truetime/TrueTime;

    .line 2
    invoke-super {p0, p1}, Lcom/instacart/library/truetime/TrueTime;->initialize(Ljava/lang/String;)V

    return-void
.end method
