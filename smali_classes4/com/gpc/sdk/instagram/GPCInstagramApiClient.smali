.class public Lcom/gpc/sdk/instagram/GPCInstagramApiClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/instagram/GPCInstagramApiClient$FriendsRequestListener;
    }
.end annotation


# static fields
.field public static final TAG_DATA:Ljava/lang/String; = "data"

.field public static final TAG_FULL_NAME:Ljava/lang/String; = "full_name"

.field public static final TAG_ID:Ljava/lang/String; = "id"

.field public static final TAG_PROFILE_PICTURE:Ljava/lang/String; = "profile_picture"

.field public static final TAG_USERNAME:Ljava/lang/String; = "username"

.field public static final d:Ljava/lang/String; = "InstagramApiClient"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "https://api.instagram.com/v1"

    iput-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramApiClient;->a:Ljava/lang/String;

    .line 3
    const-string v0, "/users/self/follows"

    iput-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramApiClient;->b:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/gpc/sdk/instagram/GPCInstagramApiClient;->c:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/instagram/GPCInstagramApiClient;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/instagram/GPCInstagramApiClient;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/gpc/sdk/instagram/GPCInstagramApiClient;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/instagram/GPCInstagramApiClient;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lcom/gpc/sdk/instagram/GPCInstagramApiClient;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/instagram/GPCInstagramApiClient;->c:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public requestFriends(Lcom/gpc/sdk/instagram/GPCInstagramApiClient$FriendsRequestListener;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/util/SDKTask;

    invoke-direct {v0}, Lcom/gpc/util/SDKTask;-><init>()V

    .line 2
    new-instance v1, Lcom/gpc/sdk/instagram/GPCInstagramApiClient$a;

    invoke-direct {v1, p0, p1}, Lcom/gpc/sdk/instagram/GPCInstagramApiClient$a;-><init>(Lcom/gpc/sdk/instagram/GPCInstagramApiClient;Lcom/gpc/sdk/instagram/GPCInstagramApiClient$FriendsRequestListener;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/gpc/util/SDKTask;->excuteForTimeConsuming(Lcom/gpc/util/SDKTask$SDKTaskRunnable;Lcom/gpc/util/SDKTask$SDKTaskResultListener;)V

    return-void
.end method
