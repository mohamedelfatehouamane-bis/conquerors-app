.class Lcom/igg/sdk/invite/InviteManager$2;
.super Ljava/lang/Object;
.source "InviteManager.java"

# interfaces
.implements Lcom/igg/sdk/invite/OnInviteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/sdk/invite/InviteManager;->addRecommend(Landroid/content/Context;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igg/sdk/invite/InviteManager;


# direct methods
.method constructor <init>(Lcom/igg/sdk/invite/InviteManager;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/igg/sdk/invite/InviteManager$2;->this$0:Lcom/igg/sdk/invite/InviteManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInvite(Lcom/igg/sdk/invite/InviteElement;)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/igg/sdk/invite/InviteManager$2;->this$0:Lcom/igg/sdk/invite/InviteManager;

    invoke-static {v0, p1}, Lcom/igg/sdk/invite/InviteManager;->access$000(Lcom/igg/sdk/invite/InviteManager;Lcom/igg/sdk/invite/InviteElement;)V

    return-void
.end method
