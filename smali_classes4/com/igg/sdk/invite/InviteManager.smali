.class public Lcom/igg/sdk/invite/InviteManager;
.super Ljava/lang/Object;
.source "InviteManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/igg/sdk/invite/InviteManager$ShareView;,
        Lcom/igg/sdk/invite/InviteManager$InviteResultListener;,
        Lcom/igg/sdk/invite/InviteManager$MyAdapter;
    }
.end annotation


# static fields
.field public static final ORIENTATION_LANDSCAPE:I = 0x0

.field public static final ORIENTATION_PORTRAIT:I = 0x1

.field private static instance:Lcom/igg/sdk/invite/InviteManager;


# instance fields
.field callback:Lcom/facebook/FacebookCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;"
        }
    .end annotation
.end field

.field content:Ljava/lang/String;

.field context:Landroid/content/Context;

.field data:Ljava/lang/String;

.field invatePanel:Lcom/igg/sdk/invite/InvitePanel;

.field private mLocale:Ljava/util/Locale;

.field private m_materialDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

.field private recommend:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/igg/sdk/invite/InviteElement;",
            ">;"
        }
    .end annotation
.end field

.field private screenOrientation:I

.field title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/igg/sdk/invite/InviteManager;

    invoke-direct {v0}, Lcom/igg/sdk/invite/InviteManager;-><init>()V

    sput-object v0, Lcom/igg/sdk/invite/InviteManager;->instance:Lcom/igg/sdk/invite/InviteManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/igg/sdk/invite/InviteManager;->m_materialDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/igg/sdk/invite/InviteManager;->recommend:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/igg/sdk/invite/InviteManager;Lcom/igg/sdk/invite/InviteElement;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/igg/sdk/invite/InviteManager;->doInvite(Lcom/igg/sdk/invite/InviteElement;)V

    return-void
.end method

.method static synthetic access$100(Lcom/igg/sdk/invite/InviteManager;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ResolveInfo;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/igg/sdk/invite/InviteManager;->createShare(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ResolveInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/igg/sdk/invite/InviteManager;)Lcom/afollestad/materialdialogs/MaterialDialog;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/igg/sdk/invite/InviteManager;->m_materialDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    return-object p0
.end method

.method static synthetic access$202(Lcom/igg/sdk/invite/InviteManager;Lcom/afollestad/materialdialogs/MaterialDialog;)Lcom/afollestad/materialdialogs/MaterialDialog;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/igg/sdk/invite/InviteManager;->m_materialDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    return-object p1
.end method

.method private createShare(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ResolveInfo;)V
    .locals 2

    .line 343
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p3, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p3, p3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 349
    const-string p3, "text/plain"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    const-string p3, "android.intent.extra.TEXT"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 352
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 353
    iget-object p2, p0, Lcom/igg/sdk/invite/InviteManager;->context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 356
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private doInvite(Lcom/igg/sdk/invite/InviteElement;)V
    .locals 6

    .line 363
    iget-object v0, p0, Lcom/igg/sdk/invite/InviteManager;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/igg/sdk/invite/InviteManager;->context:Landroid/content/Context;

    sget v1, Lcom/igg/sdk/invite/R$string;->friend_invite_text:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igg/sdk/invite/InviteManager;->content:Ljava/lang/String;

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/igg/sdk/invite/InviteManager;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/igg/sdk/invite/InviteManager;->context:Landroid/content/Context;

    sget v1, Lcom/igg/sdk/invite/R$string;->friend_invite_subject:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igg/sdk/invite/InviteManager;->title:Ljava/lang/String;

    .line 369
    :cond_1
    iget-object v0, p1, Lcom/igg/sdk/invite/InviteElement;->sdk:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 370
    iget-object v0, p1, Lcom/igg/sdk/invite/InviteElement;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "android.intent.extra.TEXT"

    const/4 v4, 0x0

    if-nez v0, :cond_2

    .line 371
    new-instance v0, Landroid/content/Intent;

    iget-object v5, p1, Lcom/igg/sdk/invite/InviteElement;->action:Ljava/lang/String;

    invoke-direct {v0, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 372
    iget-object v4, p1, Lcom/igg/sdk/invite/InviteElement;->type:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    iget-object v4, p1, Lcom/igg/sdk/invite/InviteElement;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    iget-object v4, p0, Lcom/igg/sdk/invite/InviteManager;->content:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    :try_start_0
    iget-object v3, p0, Lcom/igg/sdk/invite/InviteManager;->context:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 378
    iget-object v3, p0, Lcom/igg/sdk/invite/InviteManager;->context:Landroid/content/Context;

    sget v4, Lcom/igg/sdk/invite/R$string;->friend_invite_app_uninstall:I

    iget-object p1, p1, Lcom/igg/sdk/invite/InviteElement;->name:Ljava/lang/String;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p1, v5, v2

    .line 380
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 378
    invoke-static {v3, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 382
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 383
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 386
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v5, p1, Lcom/igg/sdk/invite/InviteElement;->action:Ljava/lang/String;

    invoke-direct {v0, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 387
    const-string v4, "android.intent.extra.SUBJECT"

    iget-object v5, p0, Lcom/igg/sdk/invite/InviteManager;->title:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    iget-object v4, p0, Lcom/igg/sdk/invite/InviteManager;->content:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    const-string v3, "sms_body"

    iget-object v4, p0, Lcom/igg/sdk/invite/InviteManager;->content:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    iget-object v3, p1, Lcom/igg/sdk/invite/InviteElement;->type:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 391
    iget-object v3, p1, Lcom/igg/sdk/invite/InviteElement;->type:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/igg/sdk/invite/InviteManager;->context:Landroid/content/Context;

    sget v4, Lcom/igg/sdk/invite/R$string;->friend_invite_send_via:I

    .line 394
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 393
    invoke-static {v0, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 396
    :catch_1
    iget-object v0, p0, Lcom/igg/sdk/invite/InviteManager;->context:Landroid/content/Context;

    sget v3, Lcom/igg/sdk/invite/R$string;->friend_invite_app_uninstall:I

    iget-object p1, p1, Lcom/igg/sdk/invite/InviteElement;->name:Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    .line 398
    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 396
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 400
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 405
    :cond_4
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/igg/sdk/invite/InviteManager;->context:Landroid/content/Context;

    iget-object v3, p1, Lcom/igg/sdk/invite/InviteElement;->sdk:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 406
    iget-object v2, p0, Lcom/igg/sdk/invite/InviteManager;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception v0

    .line 408
    iget-object v2, p0, Lcom/igg/sdk/invite/InviteManager;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8bf7\u68c0\u67e5"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/igg/sdk/invite/InviteElement;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u7684SDK\u7c7b\u8def\u5f84\u662f\u5426\u6b63\u786e!"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 409
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/igg/sdk/invite/InviteManager;
    .locals 1

    .line 108
    sget-object v0, Lcom/igg/sdk/invite/InviteManager;->instance:Lcom/igg/sdk/invite/InviteManager;

    return-object v0
.end method

.method private getResolveInfoByType(Lcom/igg/sdk/invite/InviteElement;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igg/sdk/invite/InviteElement;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 330
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/igg/sdk/invite/InviteElement;->action:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 331
    iget-object p1, p1, Lcom/igg/sdk/invite/InviteElement;->type:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    iget-object p1, p0, Lcom/igg/sdk/invite/InviteManager;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    .line 333
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private getShareTargets()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 293
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 294
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    iget-object v1, p0, Lcom/igg/sdk/invite/InviteManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 297
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static invite(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/FacebookCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .line 96
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/igg/sdk/invite/InviteManager;->invite(Landroid/content/Context;Ljava/util/Locale;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/FacebookCallback;)V

    return-void
.end method

.method public static invite(Landroid/content/Context;Ljava/util/Locale;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/FacebookCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Locale;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-static {}, Lcom/igg/sdk/invite/InviteManager;->getInstance()Lcom/igg/sdk/invite/InviteManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/igg/sdk/invite/InviteManager;->setLocale(Ljava/util/Locale;)V

    .line 59
    invoke-static {}, Lcom/igg/sdk/invite/InviteManager;->getInstance()Lcom/igg/sdk/invite/InviteManager;

    move-result-object p1

    invoke-direct {p1, p0}, Lcom/igg/sdk/invite/InviteManager;->setContext(Landroid/content/Context;)V

    .line 60
    invoke-static {}, Lcom/igg/sdk/invite/InviteManager;->getInstance()Lcom/igg/sdk/invite/InviteManager;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/igg/sdk/invite/InviteManager;->setData(Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/igg/sdk/invite/InviteManager;->getInstance()Lcom/igg/sdk/invite/InviteManager;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/igg/sdk/invite/InviteManager;->setTitle(Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/igg/sdk/invite/InviteManager;->getInstance()Lcom/igg/sdk/invite/InviteManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/igg/sdk/invite/InviteManager;->setScreenOrientation(I)V

    .line 63
    invoke-static {}, Lcom/igg/sdk/invite/InviteManager;->getInstance()Lcom/igg/sdk/invite/InviteManager;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/igg/sdk/invite/InviteManager;->setContent(Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/igg/sdk/invite/InviteManager;->getInstance()Lcom/igg/sdk/invite/InviteManager;

    move-result-object p0

    invoke-virtual {p0, p6}, Lcom/igg/sdk/invite/InviteManager;->setCallback(Lcom/facebook/FacebookCallback;)V

    .line 65
    invoke-static {}, Lcom/igg/sdk/invite/InviteManager;->getInstance()Lcom/igg/sdk/invite/InviteManager;

    move-result-object p0

    invoke-direct {p0}, Lcom/igg/sdk/invite/InviteManager;->startInviteActivity()V

    return-void
.end method

.method public static invite(Landroid/content/Context;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/FacebookCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 93
    invoke-static/range {v0 .. v6}, Lcom/igg/sdk/invite/InviteManager;->invite(Landroid/content/Context;Ljava/util/Locale;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/FacebookCallback;)V

    return-void
.end method

.method private isRecommend(Landroid/content/pm/ResolveInfo;)Z
    .locals 5

    .line 201
    iget-object v0, p0, Lcom/igg/sdk/invite/InviteManager;->recommend:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igg/sdk/invite/InviteElement;

    .line 202
    iget-object v2, v1, Lcom/igg/sdk/invite/InviteElement;->packageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 203
    iget-object v1, v1, Lcom/igg/sdk/invite/InviteElement;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v3

    .line 208
    :cond_1
    invoke-direct {p0, v1}, Lcom/igg/sdk/invite/InviteManager;->getResolveInfoByType(Lcom/igg/sdk/invite/InviteElement;)Ljava/util/List;

    move-result-object v1

    .line 209
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 210
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 211
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v3

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public static moreAppShare(Landroid/content/Context;Ljava/util/Locale;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/FacebookCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Locale;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .line 70
    invoke-static {}, Lcom/igg/sdk/invite/InviteManager;->getInstance()Lcom/igg/sdk/invite/InviteManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/igg/sdk/invite/InviteManager;->setLocale(Ljava/util/Locale;)V

    .line 71
    invoke-static {}, Lcom/igg/sdk/invite/InviteManager;->getInstance()Lcom/igg/sdk/invite/InviteManager;

    move-result-object p1

    invoke-direct {p1, p0}, Lcom/igg/sdk/invite/InviteManager;->setContext(Landroid/content/Context;)V

    .line 72
    invoke-static {}, Lcom/igg/sdk/invite/InviteManager;->getInstance()Lcom/igg/sdk/invite/InviteManager;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/igg/sdk/invite/InviteManager;->setData(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/igg/sdk/invite/InviteManager;->getInstance()Lcom/igg/sdk/invite/InviteManager;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/igg/sdk/invite/InviteManager;->setTitle(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/igg/sdk/invite/InviteManager;->getInstance()Lcom/igg/sdk/invite/InviteManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/igg/sdk/invite/InviteManager;->setScreenOrientation(I)V

    .line 75
    invoke-static {}, Lcom/igg/sdk/invite/InviteManager;->getInstance()Lcom/igg/sdk/invite/InviteManager;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/igg/sdk/invite/InviteManager;->setContent(Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/igg/sdk/invite/InviteManager;->getInstance()Lcom/igg/sdk/invite/InviteManager;

    move-result-object p0

    invoke-virtual {p0, p6}, Lcom/igg/sdk/invite/InviteManager;->setCallback(Lcom/facebook/FacebookCallback;)V

    .line 77
    invoke-static {}, Lcom/igg/sdk/invite/InviteManager;->getInstance()Lcom/igg/sdk/invite/InviteManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/igg/sdk/invite/InviteManager;->clearRecommend()V

    .line 78
    new-instance p0, Ljava/lang/Thread;

    new-instance p1, Lcom/igg/sdk/invite/InviteManager$1;

    invoke-direct {p1}, Lcom/igg/sdk/invite/InviteManager$1;-><init>()V

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 85
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static moreAppShare(Landroid/content/Context;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/FacebookCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 89
    invoke-static/range {v0 .. v6}, Lcom/igg/sdk/invite/InviteManager;->moreAppShare(Landroid/content/Context;Ljava/util/Locale;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/FacebookCallback;)V

    return-void
.end method

.method private setContext(Landroid/content/Context;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/igg/sdk/invite/InviteManager;->context:Landroid/content/Context;

    return-void
.end method

.method private startInviteActivity()V
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/igg/sdk/invite/InviteManager;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/igg/sdk/invite/InviteManager;->context:Landroid/content/Context;

    const-class v3, Lcom/igg/sdk/invite/FriendInviteActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method addMoreInvate()V
    .locals 8

    .line 221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 222
    invoke-direct {p0}, Lcom/igg/sdk/invite/InviteManager;->getShareTargets()Ljava/util/List;

    move-result-object v1

    .line 223
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 224
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_4

    const/4 v3, 0x0

    .line 225
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 226
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 227
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 228
    iget-object v7, p0, Lcom/igg/sdk/invite/InviteManager;->context:Landroid/content/Context;

    .line 229
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 228
    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 229
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 230
    invoke-direct {p0, v5}, Lcom/igg/sdk/invite/InviteManager;->isRecommend(Landroid/content/pm/ResolveInfo;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    .line 233
    :cond_0
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 235
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 236
    new-instance v5, Lcom/igg/sdk/invite/InviteElement;

    invoke-direct {v5}, Lcom/igg/sdk/invite/InviteElement;-><init>()V

    .line 237
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v5, Lcom/igg/sdk/invite/InviteElement;->name:Ljava/lang/String;

    .line 239
    :try_start_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, p0, Lcom/igg/sdk/invite/InviteManager;->context:Landroid/content/Context;

    .line 240
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v5, Lcom/igg/sdk/invite/InviteElement;->icon:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :catchall_0
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 253
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_3

    .line 254
    iget-object v0, p0, Lcom/igg/sdk/invite/InviteManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/igg/sdk/invite/R$string;->friend_invate_no_app:I

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 259
    :cond_3
    new-instance v1, Lcom/igg/sdk/invite/InviteManager$3;

    invoke-direct {v1, p0, v0, v2}, Lcom/igg/sdk/invite/InviteManager$3;-><init>(Lcom/igg/sdk/invite/InviteManager;Ljava/util/Map;Ljava/util/List;)V

    .line 278
    new-instance v0, Lcom/igg/sdk/invite/InviteManager$ShareView;

    iget-object v5, p0, Lcom/igg/sdk/invite/InviteManager;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v5, v2, v1}, Lcom/igg/sdk/invite/InviteManager$ShareView;-><init>(Lcom/igg/sdk/invite/InviteManager;Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;)V

    .line 279
    new-instance v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v2, p0, Lcom/igg/sdk/invite/InviteManager;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/igg/sdk/invite/R$drawable;->icon:I

    .line 280
    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->iconRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    sget v2, Lcom/igg/sdk/invite/R$string;->friend_invite_send_via:I

    .line 281
    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    const/high16 v2, -0x1000000

    .line 282
    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->titleColor(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    .line 283
    invoke-virtual {v1, v0, v4}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->customView(Landroid/view/View;Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 284
    invoke-virtual {v0, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/igg/sdk/invite/InviteManager;->m_materialDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void

    .line 249
    :cond_4
    iget-object v0, p0, Lcom/igg/sdk/invite/InviteManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/igg/sdk/invite/R$string;->friend_invate_no_app:I

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method addRecommend(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    iput-object p1, p0, Lcom/igg/sdk/invite/InviteManager;->context:Landroid/content/Context;

    .line 190
    new-instance v0, Lcom/igg/sdk/invite/InvitePanel;

    iget-object v1, p0, Lcom/igg/sdk/invite/InviteManager;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/igg/sdk/invite/InvitePanel;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/igg/sdk/invite/InviteManager;->invatePanel:Lcom/igg/sdk/invite/InvitePanel;

    .line 191
    new-instance p1, Lcom/igg/sdk/invite/InviteManager$2;

    invoke-direct {p1, p0}, Lcom/igg/sdk/invite/InviteManager$2;-><init>(Lcom/igg/sdk/invite/InviteManager;)V

    invoke-virtual {v0, p1}, Lcom/igg/sdk/invite/InvitePanel;->setListener(Lcom/igg/sdk/invite/OnInviteListener;)V

    .line 197
    iget-object p1, p0, Lcom/igg/sdk/invite/InviteManager;->recommend:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/igg/sdk/invite/InviteManager;->invatePanel:Lcom/igg/sdk/invite/InvitePanel;

    invoke-virtual {p2}, Lcom/igg/sdk/invite/InvitePanel;->getElements()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public clearRecommend()V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/igg/sdk/invite/InviteManager;->recommend:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/igg/sdk/invite/InviteManager;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/igg/sdk/invite/InviteManager;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/igg/sdk/invite/InviteManager;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method getScreenOrientation()I
    .locals 1

    .line 418
    iget v0, p0, Lcom/igg/sdk/invite/InviteManager;->screenOrientation:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/igg/sdk/invite/InviteManager;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setCallback(Lcom/facebook/FacebookCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lcom/igg/sdk/invite/InviteManager;->callback:Lcom/facebook/FacebookCallback;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/igg/sdk/invite/InviteManager;->content:Ljava/lang/String;

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/igg/sdk/invite/InviteManager;->data:Ljava/lang/String;

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/igg/sdk/invite/InviteManager;->mLocale:Ljava/util/Locale;

    return-void
.end method

.method setScreenOrientation(I)V
    .locals 0

    .line 415
    iput p1, p0, Lcom/igg/sdk/invite/InviteManager;->screenOrientation:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/igg/sdk/invite/InviteManager;->title:Ljava/lang/String;

    return-void
.end method
