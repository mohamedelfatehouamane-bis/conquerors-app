.class public final Lcom/gpc/sdk/eventcollection/bean/GPCEvent;
.super Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
