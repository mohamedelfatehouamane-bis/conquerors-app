.class public final synthetic Lcom/gpc/sdk/misc/v$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;


# instance fields
.field public final synthetic f$0:Lcom/gpc/sdk/translate/service/TranslateForNameTextsListener;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/gpc/sdk/translate/service/TranslateForNameTextsListener;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gpc/sdk/misc/v$$ExternalSyntheticLambda0;->f$0:Lcom/gpc/sdk/translate/service/TranslateForNameTextsListener;

    iput p2, p0, Lcom/gpc/sdk/misc/v$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final onGeneralRequestFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/gpc/sdk/misc/v$$ExternalSyntheticLambda0;->f$0:Lcom/gpc/sdk/translate/service/TranslateForNameTextsListener;

    iget v1, p0, Lcom/gpc/sdk/misc/v$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1, p1, p2, p3}, Lcom/gpc/sdk/misc/v;->a(Lcom/gpc/sdk/translate/service/TranslateForNameTextsListener;ILcom/gpc/sdk/error/GPCException;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method
