.class public Lcom/shizhefei/fragment/LazyFragment;
.super Lcom/shizhefei/fragment/BaseFragment;
.source "LazyFragment.java"


# static fields
.field public static final INTENT_BOOLEAN_LAZYLOAD:Ljava/lang/String; = "intent_boolean_lazyLoad"


# instance fields
.field private isInit:Z

.field private isLazyLoad:Z

.field private isStart:Z

.field private layout:Landroid/widget/FrameLayout;

.field private savedInstanceState:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Lcom/shizhefei/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/shizhefei/fragment/LazyFragment;->isInit:Z

    const/4 v1, 0x1

    .line 28
    iput-boolean v1, p0, Lcom/shizhefei/fragment/LazyFragment;->isLazyLoad:Z

    .line 93
    iput-boolean v0, p0, Lcom/shizhefei/fragment/LazyFragment;->isStart:Z

    return-void
.end method


# virtual methods
.method protected final onCreateView(Landroid/os/Bundle;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    invoke-super {p0, p1}, Lcom/shizhefei/fragment/BaseFragment;->onCreateView(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/shizhefei/fragment/LazyFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    const-string v1, "intent_boolean_lazyLoad"

    iget-boolean v2, p0, Lcom/shizhefei/fragment/LazyFragment;->isLazyLoad:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/shizhefei/fragment/LazyFragment;->isLazyLoad:Z

    .line 38
    :cond_0
    iget-boolean v0, p0, Lcom/shizhefei/fragment/LazyFragment;->isLazyLoad:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 39
    invoke-virtual {p0}, Lcom/shizhefei/fragment/LazyFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/shizhefei/fragment/LazyFragment;->isInit:Z

    if-nez v0, :cond_1

    .line 40
    iput-boolean v1, p0, Lcom/shizhefei/fragment/LazyFragment;->isInit:Z

    .line 41
    iput-object p1, p0, Lcom/shizhefei/fragment/LazyFragment;->savedInstanceState:Landroid/os/Bundle;

    .line 42
    invoke-virtual {p0, p1}, Lcom/shizhefei/fragment/LazyFragment;->onCreateViewLazy(Landroid/os/Bundle;)V

    return-void

    .line 44
    :cond_1
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/shizhefei/fragment/LazyFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/shizhefei/fragment/LazyFragment;->layout:Landroid/widget/FrameLayout;

    .line 45
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    iget-object p1, p0, Lcom/shizhefei/fragment/LazyFragment;->layout:Landroid/widget/FrameLayout;

    invoke-super {p0, p1}, Lcom/shizhefei/fragment/BaseFragment;->setContentView(Landroid/view/View;)V

    return-void

    .line 49
    :cond_2
    iput-boolean v1, p0, Lcom/shizhefei/fragment/LazyFragment;->isInit:Z

    .line 50
    invoke-virtual {p0, p1}, Lcom/shizhefei/fragment/LazyFragment;->onCreateViewLazy(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onCreateViewLazy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onDestroyView()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 161
    invoke-super {p0}, Lcom/shizhefei/fragment/BaseFragment;->onDestroyView()V

    .line 162
    iget-boolean v0, p0, Lcom/shizhefei/fragment/LazyFragment;->isInit:Z

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/shizhefei/fragment/LazyFragment;->onDestroyViewLazy()V

    :cond_0
    const/4 v0, 0x0

    .line 165
    iput-boolean v0, p0, Lcom/shizhefei/fragment/LazyFragment;->isInit:Z

    return-void
.end method

.method protected onDestroyViewLazy()V
    .locals 0

    return-void
.end method

.method protected onFragmentStartLazy()V
    .locals 0

    return-void
.end method

.method protected onFragmentStopLazy()V
    .locals 0

    return-void
.end method

.method public final onPause()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 152
    invoke-super {p0}, Lcom/shizhefei/fragment/BaseFragment;->onPause()V

    .line 153
    iget-boolean v0, p0, Lcom/shizhefei/fragment/LazyFragment;->isInit:Z

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/shizhefei/fragment/LazyFragment;->onPauseLazy()V

    :cond_0
    return-void
.end method

.method protected onPauseLazy()V
    .locals 0

    return-void
.end method

.method public final onResume()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 143
    invoke-super {p0}, Lcom/shizhefei/fragment/BaseFragment;->onResume()V

    .line 144
    iget-boolean v0, p0, Lcom/shizhefei/fragment/LazyFragment;->isInit:Z

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/shizhefei/fragment/LazyFragment;->onResumeLazy()V

    :cond_0
    return-void
.end method

.method protected onResumeLazy()V
    .locals 0

    return-void
.end method

.method public final onStart()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 76
    invoke-super {p0}, Lcom/shizhefei/fragment/BaseFragment;->onStart()V

    .line 77
    iget-boolean v0, p0, Lcom/shizhefei/fragment/LazyFragment;->isInit:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shizhefei/fragment/LazyFragment;->isStart:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/shizhefei/fragment/LazyFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/shizhefei/fragment/LazyFragment;->isStart:Z

    .line 79
    invoke-virtual {p0}, Lcom/shizhefei/fragment/LazyFragment;->onFragmentStartLazy()V

    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 86
    invoke-super {p0}, Lcom/shizhefei/fragment/BaseFragment;->onStop()V

    .line 87
    iget-boolean v0, p0, Lcom/shizhefei/fragment/LazyFragment;->isInit:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shizhefei/fragment/LazyFragment;->isStart:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shizhefei/fragment/LazyFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/shizhefei/fragment/LazyFragment;->isStart:Z

    .line 89
    invoke-virtual {p0}, Lcom/shizhefei/fragment/LazyFragment;->onFragmentStopLazy()V

    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 3

    .line 121
    iget-boolean v0, p0, Lcom/shizhefei/fragment/LazyFragment;->isLazyLoad:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shizhefei/fragment/LazyFragment;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shizhefei/fragment/LazyFragment;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/shizhefei/fragment/LazyFragment;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 123
    iget-object v0, p0, Lcom/shizhefei/fragment/LazyFragment;->inflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/shizhefei/fragment/LazyFragment;->layout:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 124
    iget-object v0, p0, Lcom/shizhefei/fragment/LazyFragment;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void

    .line 126
    :cond_0
    invoke-super {p0, p1}, Lcom/shizhefei/fragment/BaseFragment;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/shizhefei/fragment/LazyFragment;->isLazyLoad:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shizhefei/fragment/LazyFragment;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shizhefei/fragment/LazyFragment;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/shizhefei/fragment/LazyFragment;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 134
    iget-object v0, p0, Lcom/shizhefei/fragment/LazyFragment;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void

    .line 136
    :cond_0
    invoke-super {p0, p1}, Lcom/shizhefei/fragment/BaseFragment;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2

    .line 56
    invoke-super {p0, p1}, Lcom/shizhefei/fragment/BaseFragment;->setUserVisibleHint(Z)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 57
    iget-boolean v1, p0, Lcom/shizhefei/fragment/LazyFragment;->isInit:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/shizhefei/fragment/LazyFragment;->getContentView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 58
    iput-boolean v0, p0, Lcom/shizhefei/fragment/LazyFragment;->isInit:Z

    .line 59
    iget-object v1, p0, Lcom/shizhefei/fragment/LazyFragment;->savedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Lcom/shizhefei/fragment/LazyFragment;->onCreateViewLazy(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/shizhefei/fragment/LazyFragment;->onResumeLazy()V

    .line 62
    :cond_0
    iget-boolean v1, p0, Lcom/shizhefei/fragment/LazyFragment;->isInit:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/shizhefei/fragment/LazyFragment;->getContentView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    .line 64
    iput-boolean v0, p0, Lcom/shizhefei/fragment/LazyFragment;->isStart:Z

    .line 65
    invoke-virtual {p0}, Lcom/shizhefei/fragment/LazyFragment;->onFragmentStartLazy()V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 67
    iput-boolean p1, p0, Lcom/shizhefei/fragment/LazyFragment;->isStart:Z

    .line 68
    invoke-virtual {p0}, Lcom/shizhefei/fragment/LazyFragment;->onFragmentStopLazy()V

    :cond_2
    return-void
.end method
