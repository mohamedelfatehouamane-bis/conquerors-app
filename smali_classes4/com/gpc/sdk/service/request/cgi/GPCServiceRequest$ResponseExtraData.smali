.class public Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$ResponseExtraData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResponseExtraData"
.end annotation


# instance fields
.field private traceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTraceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$ResponseExtraData;->traceId:Ljava/lang/String;

    return-object v0
.end method

.method public setTraceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$ResponseExtraData;->traceId:Ljava/lang/String;

    return-void
.end method
