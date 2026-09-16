.class public Lcom/gpc/sdk/apprating/bean/GPCAppRatingStatus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mode:Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/apprating/bean/GPCAppRatingStatus;->mode:Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;

    return-void
.end method


# virtual methods
.method public getMode()Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/apprating/bean/GPCAppRatingStatus;->mode:Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;

    return-object v0
.end method
