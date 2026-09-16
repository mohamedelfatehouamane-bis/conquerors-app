.class final synthetic Lcom/google/android/gms/games/gamessignin/zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@21.0.0"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/games/gamessignin/zza;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/gamessignin/zza;

    invoke-direct {v0}, Lcom/google/android/gms/games/gamessignin/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/gamessignin/zza;->zza:Lcom/google/android/gms/games/gamessignin/zza;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/games/gamessignin/AuthScope;->zzc(Ljava/lang/String;)Lcom/google/android/gms/games/gamessignin/AuthScope;

    move-result-object p1

    return-object p1
.end method
