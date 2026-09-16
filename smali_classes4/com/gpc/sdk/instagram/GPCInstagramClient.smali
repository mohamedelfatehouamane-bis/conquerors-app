.class public Lcom/gpc/sdk/instagram/GPCInstagramClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/instagram/GPCInstagramClient$OAuthAuthenticationListener;
    }
.end annotation


# static fields
.field public static final TAG_BIO:Ljava/lang/String; = "bio"

.field public static final TAG_CODE:Ljava/lang/String; = "code"

.field public static final TAG_COUNTS:Ljava/lang/String; = "counts"

.field public static final TAG_DATA:Ljava/lang/String; = "data"

.field public static final TAG_FOLLOWED_BY:Ljava/lang/String; = "followed_by"

.field public static final TAG_FOLLOWS:Ljava/lang/String; = "follows"

.field public static final TAG_FULL_NAME:Ljava/lang/String; = "full_name"

.field public static final TAG_ID:Ljava/lang/String; = "id"

.field public static final TAG_MEDIA:Ljava/lang/String; = "media"

.field public static final TAG_META:Ljava/lang/String; = "meta"

.field public static final TAG_PROFILE_PICTURE:Ljava/lang/String; = "profile_picture"

.field public static final TAG_USERNAME:Ljava/lang/String; = "username"

.field public static final TAG_WEBSITE:Ljava/lang/String; = "website"

.field public static WHAT_ERROR:I = 0x1

.field public static WHAT_FINALIZE:I = 0x0

.field public static callbackUrl:Ljava/lang/String; = ""

.field public static m:I = 0x2

.field public static final n:Ljava/lang/String; = "https://api.instagram.com/oauth/authorize/"

.field public static final o:Ljava/lang/String; = "https://api.instagram.com/oauth/access_token"

.field public static final p:Ljava/lang/String; = "https://api.instagram.com/v1"

.field public static final q:Ljava/lang/String; = "InstagramAPI"


# instance fields
.field public a:Lcom/gpc/sdk/instagram/GPCInstagramSession;

.field public b:Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;

.field public c:Lcom/gpc/sdk/instagram/GPCInstagramClient$OAuthAuthenticationListener;

.field public d:Landroid/app/ProgressDialog;

.field public e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Landroid/content/Context;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient;->e:Ljava/util/HashMap;

    .line 171
    new-instance v0, Lcom/gpc/sdk/instagram/GPCInstagramClient$d;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/instagram/GPCInstagramClient$d;-><init>(Lcom/gpc/sdk/instagram/GPCInstagramClient;)V

    iput-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient;->l:Landroid/os/Handler;

    .line 172
    iput-object p2, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient;->j:Ljava/lang/String;

    .line 173
    iput-object p3, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient;->k:Ljava/lang/String;

    .line 174
    iput-object p1, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient;->i:Landroid/content/Context;

    .line 175
    new-instance v0, Lcom/gpc/sdk/instagram/GPCInstagramSession;

    invoke-direct {v0, p1}, Lcom/gpc/sdk/instagram/GPCInstagramSession;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient;->a:Lcom/gpc/sdk/instagram/GPCInstagramSession;

    .line 176
    invoke-virtual {v0}, Lcom/gpc/sdk/instagram/GPCInstagramSession;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient;->h:Ljava/lang/String;

    .line 177
    sput-object p4, Lcom/gpc/sdk/instagram/GPCInstagramClient;->callbackUrl:Ljava/lang/String;

    .line 178
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "https://api.instagram.com/oauth/access_token?client_id="

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&client_secret="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&redirect_uri="

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/gpc/sdk/instagram/GPCInstagramClient;->callbackUrl:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&grant_type=authorization_code"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient;->g:Ljava/lang/String;

    .line 181
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "https://api.instagram.com/oauth/authorize/?client_id="

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/gpc/sdk/instagram/GPCInstagramClient;->callbackUrl:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&response_type=code&display=touch&scope=likes+comments+relationships+follower_list"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient;->f:Ljava/lang/String;

    .line 188
    new-instance p2, Lcom/gpc/sdk/instagram/GPCInstagramClient$a;

    invoke-direct {p2, p0}, Lcom/gpc/sdk/instagram/GPCInstagramClient$a;-><init>(Lcom/gpc/sdk/instagram/GPCInstagramClient;)V

    .line 200
    new-instance p3, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;

    iget-object p4, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient;->f:Ljava/lang/String;

    invoke-direct {p3, p1, p4, p2}, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog$OAuthDialogListener;)V

    iput-object p3, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient;->b:Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;

    .line 201
    new-instance p2, Landroid/app/ProgressDialog;

    invoke-direct {p2, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient;->d:Landroid/app/ProgressDialog;

    const/4 p1, 0x0

    .line 202
    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method

.method public static synthetic a()I
    .locals 1

    .line 3
    sget v0, Lcom/gpc/sdk/instagram/GPCInstagramClient;->m:I

    return v0
.end method

.method public static synthetic a(Lcom/gpc/sdk/instagram/GPCInstagramClient;)Lcom/gpc/sdk/instagram/GPCInstagramClient$OAuthAuthenticationListener;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient;->c:Lcom/gpc/sdk/instagram/GPCInstagramClient$OAuthAuthenticationListener;

    return-object p0
.end method

.method public static synthetic a(Lcom/gpc/sdk/instagram/GPCInstagramClient;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/instagram/GPCInstagramClient;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/gpc/sdk/instagram/GPCInstagramClient;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient;->j:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/gpc/sdk/instagram/GPCInstagramClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient;->h:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic c(Lcom/gpc/sdk/instagram/GPCInstagramClient;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient;->k:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lcom/gpc/sdk/instagram/GPCInstagramClient;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient;->h:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic e(Lcom/gpc/sdk/instagram/GPCInstagramClient;)Lcom/gpc/sdk/instagram/GPCInstagramSession;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient;->a:Lcom/gpc/sdk/instagram/GPCInstagramSession;

    return-object p0
.end method

.method public static synthetic f(Lcom/gpc/sdk/instagram/GPCInstagramClient;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient;->l:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic g(Lcom/gpc/sdk/instagram/GPCInstagramClient;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient;->e:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic h(Lcom/gpc/sdk/instagram/GPCInstagramClient;)Landroid/app/ProgressDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient;->d:Landroid/app/ProgressDialog;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient;->d:Landroid/app/ProgressDialog;

    const-string v1, "Getting access token ..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 7
    new-instance v0, Lcom/gpc/util/SDKTask;

    invoke-direct {v0}, Lcom/gpc/util/SDKTask;-><init>()V

    .line 8
    new-instance v1, Lcom/gpc/sdk/instagram/GPCInstagramClient$b;

    invoke-direct {v1, p0, p1}, Lcom/gpc/sdk/instagram/GPCInstagramClient$b;-><init>(Lcom/gpc/sdk/instagram/GPCInstagramClient;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/gpc/util/SDKTask;->excuteForTimeConsuming(Lcom/gpc/util/SDKTask$SDKTaskRunnable;Lcom/gpc/util/SDKTask$SDKTaskResultListener;)V

    return-void
.end method

.method public authorize()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient;->b:Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public fetchUserName(Landroid/os/Handler;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient;->d:Landroid/app/ProgressDialog;

    .line 2
    const-string v1, "Loading ..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 5
    new-instance v0, Lcom/gpc/util/SDKTask;

    invoke-direct {v0}, Lcom/gpc/util/SDKTask;-><init>()V

    .line 6
    new-instance v1, Lcom/gpc/sdk/instagram/GPCInstagramClient$c;

    invoke-direct {v1, p0, p1}, Lcom/gpc/sdk/instagram/GPCInstagramClient$c;-><init>(Lcom/gpc/sdk/instagram/GPCInstagramClient;Landroid/os/Handler;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/gpc/util/SDKTask;->excuteForTimeConsuming(Lcom/gpc/util/SDKTask$SDKTaskRunnable;Lcom/gpc/util/SDKTask$SDKTaskResultListener;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient;->a:Lcom/gpc/sdk/instagram/GPCInstagramSession;

    invoke-virtual {v0}, Lcom/gpc/sdk/instagram/GPCInstagramSession;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient;->a:Lcom/gpc/sdk/instagram/GPCInstagramSession;

    invoke-virtual {v0}, Lcom/gpc/sdk/instagram/GPCInstagramSession;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient;->a:Lcom/gpc/sdk/instagram/GPCInstagramSession;

    invoke-virtual {v0}, Lcom/gpc/sdk/instagram/GPCInstagramSession;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient;->a:Lcom/gpc/sdk/instagram/GPCInstagramSession;

    invoke-virtual {v0}, Lcom/gpc/sdk/instagram/GPCInstagramSession;->getUsername()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAccessToken()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public resetAccessToken()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient;->a:Lcom/gpc/sdk/instagram/GPCInstagramSession;

    invoke-virtual {v0}, Lcom/gpc/sdk/instagram/GPCInstagramSession;->resetAccessToken()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient;->h:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setListener(Lcom/gpc/sdk/instagram/GPCInstagramClient$OAuthAuthenticationListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/instagram/GPCInstagramClient;->c:Lcom/gpc/sdk/instagram/GPCInstagramClient$OAuthAuthenticationListener;

    return-void
.end method
