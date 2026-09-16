.class public interface abstract Lcom/gpc/sdk/account/utils/keystore/IKeyStoreCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ANDROID_KEY_STORE:Ljava/lang/String; = "AndroidKeyStore"


# virtual methods
.method public abstract getKey(Landroid/content/Context;Ljava/lang/String;)Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract init()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
