.class public Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleSuggestion$Connection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleSuggestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Connection"
.end annotation


# instance fields
.field public a:Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleSuggestion$Connection;->a:Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;

    .line 3
    iput-object p2, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleSuggestion$Connection;->b:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleSuggestion$Connection;)Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleSuggestion$Connection;->a:Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;

    return-object p0
.end method


# virtual methods
.method public getNetwork()Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleSuggestion$Connection;->a:Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleSuggestion$Connection;->b:Ljava/lang/String;

    return-object v0
.end method
