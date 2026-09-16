.class public Lcom/gpc/sdk/instagram/GPCInstagramSession;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/String; = "Instagram_Preferences"

.field public static final d:Ljava/lang/String; = "username"

.field public static final e:Ljava/lang/String; = "id"

.field public static final f:Ljava/lang/String; = "name"

.field public static final g:Ljava/lang/String; = "access_token"


# instance fields
.field public a:Landroid/content/SharedPreferences;

.field public b:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "Instagram_Preferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/instagram/GPCInstagramSession;->a:Landroid/content/SharedPreferences;

    .line 3
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/instagram/GPCInstagramSession;->b:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramSession;->a:Landroid/content/SharedPreferences;

    const-string v1, "access_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramSession;->a:Landroid/content/SharedPreferences;

    const-string v1, "id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramSession;->a:Landroid/content/SharedPreferences;

    const-string v1, "name"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramSession;->a:Landroid/content/SharedPreferences;

    const-string v1, "username"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resetAccessToken()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramSession;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramSession;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "name"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramSession;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "access_token"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramSession;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "username"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5
    iget-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramSession;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public storeAccessToken(Ljava/lang/String;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramSession;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "access_token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7
    iget-object p1, p0, Lcom/gpc/sdk/instagram/GPCInstagramSession;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public storeAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramSession;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "id"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2
    iget-object p2, p0, Lcom/gpc/sdk/instagram/GPCInstagramSession;->b:Landroid/content/SharedPreferences$Editor;

    const-string v0, "name"

    invoke-interface {p2, v0, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3
    iget-object p2, p0, Lcom/gpc/sdk/instagram/GPCInstagramSession;->b:Landroid/content/SharedPreferences$Editor;

    const-string p4, "access_token"

    invoke-interface {p2, p4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    iget-object p1, p0, Lcom/gpc/sdk/instagram/GPCInstagramSession;->b:Landroid/content/SharedPreferences$Editor;

    const-string p2, "username"

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5
    iget-object p1, p0, Lcom/gpc/sdk/instagram/GPCInstagramSession;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
