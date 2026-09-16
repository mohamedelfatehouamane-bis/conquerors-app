.class public Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;
.super Ljava/lang/Object;
.source "MaterialSimpleListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field backgroundColor:I

.field protected content:Ljava/lang/CharSequence;

.field private final context:Landroid/content/Context;

.field protected icon:Landroid/graphics/drawable/Drawable;

.field iconPadding:I

.field protected id:J

.field tag:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;->context:Landroid/content/Context;

    .line 75
    const-string p1, "#BCBCBC"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;->backgroundColor:I

    return-void
.end method


# virtual methods
.method public backgroundColor(I)Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;
    .locals 0

    .line 116
    iput p1, p0, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;->backgroundColor:I

    return-object p0
.end method

.method public backgroundColorAttr(I)Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;->backgroundColor(I)Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public backgroundColorRes(I)Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/afollestad/materialdialogs/util/DialogUtils;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;->backgroundColor(I)Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem;
    .locals 2

    .line 139
    new-instance v0, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem;-><init>(Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$1;)V

    return-object v0
.end method

.method public content(I)Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;->content:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public icon(I)Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;->icon(Landroid/graphics/drawable/Drawable;)Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public icon(Landroid/graphics/drawable/Drawable;)Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public iconPadding(I)Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;
    .locals 0

    .line 88
    iput p1, p0, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;->iconPadding:I

    return-object p0
.end method

.method public iconPaddingDp(I)Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;
    .locals 2

    int-to-float p1, p1

    .line 93
    iget-object v0, p0, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;->context:Landroid/content/Context;

    .line 98
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 95
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;->iconPadding:I

    return-object p0
.end method

.method public iconPaddingRes(I)Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;->iconPadding(I)Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public id(J)Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;
    .locals 0

    .line 129
    iput-wide p1, p0, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;->id:J

    return-object p0
.end method

.method public tag(Ljava/lang/Object;)Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListItem$Builder;->tag:Ljava/lang/Object;

    return-object p0
.end method
