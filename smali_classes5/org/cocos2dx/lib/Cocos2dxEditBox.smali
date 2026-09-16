.class public Lorg/cocos2dx/lib/Cocos2dxEditBox;
.super Landroid/widget/EditText;
.source "Cocos2dxEditBox.java"


# static fields
.field public static final kEndActionNext:I = 0x1

.field public static final kEndActionReturn:I = 0x3

.field public static final kEndActionUnknown:I = 0x0

.field private static final kTextHorizontalAlignmentCenter:I = 0x1

.field private static final kTextHorizontalAlignmentLeft:I = 0x0

.field private static final kTextHorizontalAlignmentRight:I = 0x2

.field private static final kTextVerticalAlignmentBottom:I = 0x2

.field private static final kTextVerticalAlignmentCenter:I = 0x1

.field private static final kTextVerticalAlignmentTop:I


# instance fields
.field private changedTextProgrammatically:Ljava/lang/Boolean;

.field endAction:I

.field private final kEditBoxInputFlagInitialCapsAllCharacters:I

.field private final kEditBoxInputFlagInitialCapsSentence:I

.field private final kEditBoxInputFlagInitialCapsWord:I

.field private final kEditBoxInputFlagLowercaseAllCharacters:I

.field private final kEditBoxInputFlagPassword:I

.field private final kEditBoxInputFlagSensitive:I

.field private final kEditBoxInputModeAny:I

.field private final kEditBoxInputModeDecimal:I

.field private final kEditBoxInputModeEmailAddr:I

.field private final kEditBoxInputModeNumeric:I

.field private final kEditBoxInputModePhoneNumber:I

.field private final kEditBoxInputModeSingleLine:I

.field private final kEditBoxInputModeUrl:I

.field private final kKeyboardReturnTypeDefault:I

.field private final kKeyboardReturnTypeDone:I

.field private final kKeyboardReturnTypeGo:I

.field private final kKeyboardReturnTypeNext:I

.field private final kKeyboardReturnTypeSearch:I

.field private final kKeyboardReturnTypeSend:I

.field private mInputFlagConstraints:I

.field private mInputModeConstraints:I

.field private mMaxLength:I

.field private mScaleX:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 148
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 45
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputModeAny:I

    const/4 v0, 0x1

    .line 50
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputModeEmailAddr:I

    const/4 v1, 0x2

    .line 55
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputModeNumeric:I

    const/4 v2, 0x3

    .line 60
    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputModePhoneNumber:I

    const/4 v3, 0x4

    .line 65
    iput v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputModeUrl:I

    const/4 v4, 0x5

    .line 70
    iput v4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputModeDecimal:I

    const/4 v5, 0x6

    .line 75
    iput v5, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputModeSingleLine:I

    .line 80
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputFlagPassword:I

    .line 85
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputFlagSensitive:I

    .line 90
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputFlagInitialCapsWord:I

    .line 95
    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputFlagInitialCapsSentence:I

    .line 100
    iput v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputFlagInitialCapsAllCharacters:I

    .line 105
    iput v4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputFlagLowercaseAllCharacters:I

    .line 107
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kKeyboardReturnTypeDefault:I

    .line 108
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kKeyboardReturnTypeDone:I

    .line 109
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kKeyboardReturnTypeSend:I

    .line 110
    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kKeyboardReturnTypeSearch:I

    .line 111
    iput v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kKeyboardReturnTypeGo:I

    .line 112
    iput v4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kKeyboardReturnTypeNext:I

    .line 138
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->changedTextProgrammatically:Ljava/lang/Boolean;

    .line 144
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->endAction:I

    return-void
.end method


# virtual methods
.method public getChangedTextProgrammatically()Ljava/lang/Boolean;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->changedTextProgrammatically:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMaxLength()I
    .locals 1

    .line 177
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mMaxLength:I

    return v0
.end method

.method public getOpenGLViewScaleX()F
    .locals 1

    .line 163
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mScaleX:F

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 297
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 292
    :cond_0
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 294
    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getGLSurfaceView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->requestFocus()Z

    const/4 p1, 0x1

    return p1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 303
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setChangedTextProgrammatically(Ljava/lang/Boolean;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->changedTextProgrammatically:Ljava/lang/Boolean;

    return-void
.end method

.method public setEditBoxViewRect(IIII)V
    .locals 2

    .line 152
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 154
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 155
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 156
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 157
    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 p1, 0x33

    .line 158
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 159
    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setInputFlag(I)V
    .locals 2

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 327
    :cond_0
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputFlagConstraints:I

    goto :goto_0

    :cond_1
    const/16 p1, 0x1000

    .line 324
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputFlagConstraints:I

    goto :goto_0

    :cond_2
    const/16 p1, 0x4000

    .line 321
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputFlagConstraints:I

    goto :goto_0

    :cond_3
    const/16 p1, 0x2000

    .line 318
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputFlagConstraints:I

    goto :goto_0

    :cond_4
    const/high16 p1, 0x80000

    .line 315
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputFlagConstraints:I

    goto :goto_0

    :cond_5
    const/16 p1, 0x81

    .line 310
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputFlagConstraints:I

    .line 311
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 312
    new-instance p1, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {p1}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 333
    :goto_0
    iget p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputFlagConstraints:I

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setInputType(I)V

    return-void
.end method

.method public setInputMode(I)V
    .locals 2

    const/4 v0, 0x0

    .line 255
    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setTextHorizontalAlignment(I)V

    const/4 v1, 0x1

    .line 256
    invoke-virtual {p0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setTextVerticalAlignment(I)V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 278
    :pswitch_0
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x3002

    .line 275
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x11

    .line 272
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x3

    .line 269
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    goto :goto_0

    :pswitch_4
    const/16 p1, 0x1002

    .line 266
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    goto :goto_0

    :pswitch_5
    const/16 p1, 0x21

    .line 263
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    goto :goto_0

    .line 259
    :pswitch_6
    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setTextVerticalAlignment(I)V

    const p1, 0x20001

    .line 260
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    .line 285
    :goto_0
    iget p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputFlagConstraints:I

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setInputType(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setMaxLength(I)V
    .locals 2

    .line 172
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mMaxLength:I

    const/4 p1, 0x1

    .line 174
    new-array p1, p1, [Landroid/text/InputFilter;

    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mMaxLength:I

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setMultilineEnabled(Z)V
    .locals 1

    .line 181
    iget p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    const/high16 v0, 0x20000

    or-int/2addr p1, v0

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    return-void
.end method

.method public setOpenGLViewScaleX(F)V
    .locals 0

    .line 167
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mScaleX:F

    return-void
.end method

.method public setReturnType(I)V
    .locals 2

    const v0, 0x10000001

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    .line 205
    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setImeOptions(I)V

    return-void

    :cond_0
    const p1, 0x10000005

    .line 202
    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setImeOptions(I)V

    return-void

    :cond_1
    const p1, 0x10000002

    .line 199
    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setImeOptions(I)V

    return-void

    :cond_2
    const p1, 0x10000003

    .line 196
    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setImeOptions(I)V

    return-void

    :cond_3
    const p1, 0x10000004

    .line 193
    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setImeOptions(I)V

    return-void

    :cond_4
    const p1, 0x10000006

    .line 190
    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setImeOptions(I)V

    return-void

    .line 187
    :cond_5
    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setImeOptions(I)V

    return-void
.end method

.method public setTextHorizontalAlignment(I)V
    .locals 2

    .line 211
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->getGravity()I

    move-result v0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    and-int/lit8 p1, v0, -0x4

    or-int/lit8 p1, p1, 0x5

    goto :goto_1

    :cond_1
    and-int/lit8 p1, v0, -0x8

    or-int/2addr p1, v1

    goto :goto_1

    :cond_2
    :goto_0
    and-int/lit8 p1, v0, -0x6

    or-int/lit8 p1, p1, 0x3

    .line 226
    :goto_1
    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setGravity(I)V

    return-void
.end method

.method public setTextVerticalAlignment(I)V
    .locals 4

    .line 230
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->getGravity()I

    move-result v0

    .line 231
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mScaleX:F

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->getPadding(F)I

    move-result v1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    .line 246
    div-int/lit8 p1, v1, 0x2

    invoke-virtual {p0, v1, v2, v2, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    and-int/lit8 p1, v0, -0x31

    or-int/lit8 p1, p1, 0x50

    goto :goto_1

    .line 238
    :cond_1
    div-int/lit8 p1, v1, 0x2

    invoke-virtual {p0, v1, v2, v2, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setPadding(IIII)V

    :goto_0
    and-int/lit8 p1, v0, -0x71

    or-int/lit8 p1, p1, 0x10

    goto :goto_1

    :cond_2
    mul-int/lit8 p1, v1, 0x3

    .line 234
    div-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, v1, p1, v2, v2}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setPadding(IIII)V

    and-int/lit8 p1, v0, -0x51

    or-int/lit8 p1, p1, 0x30

    .line 251
    :goto_1
    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setGravity(I)V

    return-void
.end method
