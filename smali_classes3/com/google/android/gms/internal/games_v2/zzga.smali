.class final synthetic Lcom/google/android/gms/internal/games_v2/zzga;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@21.0.0"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/games_v2/zzga;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzga;

    invoke-direct {v0}, Lcom/google/android/gms/internal/games_v2/zzga;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/games_v2/zzga;->zza:Lcom/google/android/gms/internal/games_v2/zzga;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Lcom/google/android/gms/internal/games_v2/zzgz;

    check-cast p1, Lcom/google/android/gms/internal/games_v2/zzgz;

    .line 1
    iget-object v0, p2, Lcom/google/android/gms/internal/games_v2/zzgz;->zza:[Ljava/lang/Object;

    iget p2, p2, Lcom/google/android/gms/internal/games_v2/zzgz;->zzb:I

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/games_v2/zzgw;->zzb([Ljava/lang/Object;I)V

    return-object p1
.end method
