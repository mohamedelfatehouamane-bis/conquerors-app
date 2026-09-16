.class final synthetic Lcom/google/android/gms/internal/games_v2/zzgd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@21.0.0"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/games_v2/zzgd;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzgd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/games_v2/zzgd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/games_v2/zzgd;->zza:Lcom/google/android/gms/internal/games_v2/zzgd;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    sget v0, Lcom/google/android/gms/internal/games_v2/zzhd;->zzd:I

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzgz;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzgz;-><init>(I)V

    return-object v0
.end method
