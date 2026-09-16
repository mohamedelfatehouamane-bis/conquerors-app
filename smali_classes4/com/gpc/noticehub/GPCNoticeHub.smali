.class public interface abstract Lcom/gpc/noticehub/GPCNoticeHub;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract initUserNoticeRefreshListener(Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;)V
.end method

.method public abstract setUserNoticeRefreshPayload(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract triggerUserNoticeRefresh()V
.end method
