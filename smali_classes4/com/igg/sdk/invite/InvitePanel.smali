.class public Lcom/igg/sdk/invite/InvitePanel;
.super Ljava/lang/Object;
.source "InvitePanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private container:Landroid/widget/LinearLayout;

.field private context:Landroid/content/Context;

.field elements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/igg/sdk/invite/InviteElement;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/igg/sdk/invite/OnInviteListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/igg/sdk/invite/InvitePanel;->context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/igg/sdk/invite/InvitePanel;->container:Landroid/widget/LinearLayout;

    .line 30
    invoke-static {p1, p3}, Lcom/igg/sdk/invite/InviteParseFromXml;->initTemplates(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/igg/sdk/invite/InvitePanel;->elements:Ljava/util/ArrayList;

    .line 31
    invoke-direct {p0, p1}, Lcom/igg/sdk/invite/InvitePanel;->setData(Ljava/util/ArrayList;)V

    return-void
.end method

.method private setData(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/igg/sdk/invite/InviteElement;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igg/sdk/invite/InviteElement;

    .line 36
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/igg/sdk/invite/InvitePanel;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, -0x1

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 39
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x11

    .line 40
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 41
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/igg/sdk/invite/InvitePanel;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/igg/sdk/invite/InvitePanel;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/igg/sdk/invite/R$dimen;->image_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/igg/sdk/invite/InvitePanel;->context:Landroid/content/Context;

    .line 43
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/igg/sdk/invite/R$dimen;->image_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    .line 45
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 46
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 47
    iget v3, v0, Lcom/igg/sdk/invite/InviteElement;->iconRes:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 49
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 51
    iget-object v0, p0, Lcom/igg/sdk/invite/InvitePanel;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getElements()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/igg/sdk/invite/InviteElement;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/igg/sdk/invite/InvitePanel;->elements:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/igg/sdk/invite/InvitePanel;->listener:Lcom/igg/sdk/invite/OnInviteListener;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/igg/sdk/invite/InviteElement;

    invoke-interface {v0, p1}, Lcom/igg/sdk/invite/OnInviteListener;->onInvite(Lcom/igg/sdk/invite/InviteElement;)V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/igg/sdk/invite/OnInviteListener;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/igg/sdk/invite/InvitePanel;->listener:Lcom/igg/sdk/invite/OnInviteListener;

    return-void
.end method
