.class public final Lcom/google/android/gms/internal/games_v2/zzfq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@21.0.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/games_v2/zzfo;

.field private static volatile zzb:Lcom/google/android/gms/internal/games_v2/zzfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzfp;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzfp;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/internal/games_v2/zzfq;->zza:Lcom/google/android/gms/internal/games_v2/zzfo;

    sput-object v0, Lcom/google/android/gms/internal/games_v2/zzfq;->zzb:Lcom/google/android/gms/internal/games_v2/zzfo;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/games_v2/zzfo;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/games_v2/zzfq;->zzb:Lcom/google/android/gms/internal/games_v2/zzfo;

    return-object v0
.end method
