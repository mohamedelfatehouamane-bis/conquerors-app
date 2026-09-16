.class Lcom/igg/sdk/invite/InviteManager$3;
.super Ljava/lang/Object;
.source "InviteManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/sdk/invite/InviteManager;->addMoreInvate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igg/sdk/invite/InviteManager;

.field final synthetic val$appInfo:Ljava/util/Map;

.field final synthetic val$objects:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/igg/sdk/invite/InviteManager;Ljava/util/Map;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 259
    iput-object p1, p0, Lcom/igg/sdk/invite/InviteManager$3;->this$0:Lcom/igg/sdk/invite/InviteManager;

    iput-object p2, p0, Lcom/igg/sdk/invite/InviteManager$3;->val$appInfo:Ljava/util/Map;

    iput-object p3, p0, Lcom/igg/sdk/invite/InviteManager$3;->val$objects:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 263
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 264
    iget-object v0, p0, Lcom/igg/sdk/invite/InviteManager$3;->this$0:Lcom/igg/sdk/invite/InviteManager;

    iget-object v1, v0, Lcom/igg/sdk/invite/InviteManager;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/igg/sdk/invite/InviteManager$3;->this$0:Lcom/igg/sdk/invite/InviteManager;

    iget-object v2, v2, Lcom/igg/sdk/invite/InviteManager;->content:Ljava/lang/String;

    iget-object v3, p0, Lcom/igg/sdk/invite/InviteManager$3;->val$appInfo:Ljava/util/Map;

    iget-object v4, p0, Lcom/igg/sdk/invite/InviteManager$3;->val$objects:Ljava/util/List;

    .line 265
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/igg/sdk/invite/InviteElement;

    iget-object p1, p1, Lcom/igg/sdk/invite/InviteElement;->name:Ljava/lang/String;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 264
    invoke-static {v0, v1, v2, p1}, Lcom/igg/sdk/invite/InviteManager;->access$100(Lcom/igg/sdk/invite/InviteManager;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ResolveInfo;)V

    .line 267
    iget-object p1, p0, Lcom/igg/sdk/invite/InviteManager$3;->this$0:Lcom/igg/sdk/invite/InviteManager;

    iget-object p1, p1, Lcom/igg/sdk/invite/InviteManager;->callback:Lcom/facebook/FacebookCallback;

    new-instance v0, Lcom/facebook/share/Sharer$Result;

    const-string v1, "1"

    invoke-direct {v0, v1}, Lcom/facebook/share/Sharer$Result;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/facebook/FacebookCallback;->onSuccess(Ljava/lang/Object;)V

    .line 271
    iget-object p1, p0, Lcom/igg/sdk/invite/InviteManager$3;->this$0:Lcom/igg/sdk/invite/InviteManager;

    invoke-static {p1}, Lcom/igg/sdk/invite/InviteManager;->access$200(Lcom/igg/sdk/invite/InviteManager;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 273
    iget-object p1, p0, Lcom/igg/sdk/invite/InviteManager$3;->this$0:Lcom/igg/sdk/invite/InviteManager;

    invoke-static {p1}, Lcom/igg/sdk/invite/InviteManager;->access$200(Lcom/igg/sdk/invite/InviteManager;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->cancel()V

    .line 274
    iget-object p1, p0, Lcom/igg/sdk/invite/InviteManager$3;->this$0:Lcom/igg/sdk/invite/InviteManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/igg/sdk/invite/InviteManager;->access$202(Lcom/igg/sdk/invite/InviteManager;Lcom/afollestad/materialdialogs/MaterialDialog;)Lcom/afollestad/materialdialogs/MaterialDialog;

    :cond_0
    return-void
.end method
