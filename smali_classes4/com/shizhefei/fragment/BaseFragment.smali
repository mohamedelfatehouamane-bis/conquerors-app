.class public Lcom/shizhefei/fragment/BaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseFragment.java"


# instance fields
.field private container:Landroid/view/ViewGroup;

.field private contentView:Landroid/view/View;

.field private context:Landroid/content/Context;

.field protected inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/shizhefei/fragment/BaseFragment;->contentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/shizhefei/fragment/BaseFragment;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/shizhefei/fragment/BaseFragment;->contentView:Landroid/view/View;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 18
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lcom/shizhefei/fragment/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/shizhefei/fragment/BaseFragment;->context:Landroid/content/Context;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 24
    iput-object p1, p0, Lcom/shizhefei/fragment/BaseFragment;->inflater:Landroid/view/LayoutInflater;

    .line 25
    iput-object p2, p0, Lcom/shizhefei/fragment/BaseFragment;->container:Landroid/view/ViewGroup;

    .line 26
    invoke-virtual {p0, p3}, Lcom/shizhefei/fragment/BaseFragment;->onCreateView(Landroid/os/Bundle;)V

    .line 27
    iget-object v0, p0, Lcom/shizhefei/fragment/BaseFragment;->contentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 28
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method protected onCreateView(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 38
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/shizhefei/fragment/BaseFragment;->contentView:Landroid/view/View;

    .line 40
    iput-object v0, p0, Lcom/shizhefei/fragment/BaseFragment;->container:Landroid/view/ViewGroup;

    .line 41
    iput-object v0, p0, Lcom/shizhefei/fragment/BaseFragment;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public onDetach()V
    .locals 0

    .line 69
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public setContentView(I)V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/shizhefei/fragment/BaseFragment;->inflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/shizhefei/fragment/BaseFragment;->container:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/shizhefei/fragment/BaseFragment;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/shizhefei/fragment/BaseFragment;->contentView:Landroid/view/View;

    return-void
.end method
