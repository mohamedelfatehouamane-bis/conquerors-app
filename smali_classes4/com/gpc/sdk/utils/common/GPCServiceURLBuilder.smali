.class public interface abstract Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getPrefixes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setPath(Ljava/lang/String;)V
.end method

.method public abstract setPickPrefix(Landroid/content/Context;Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;)V
.end method

.method public abstract setPrefixes(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;",
            ">;)V"
        }
    .end annotation
.end method
