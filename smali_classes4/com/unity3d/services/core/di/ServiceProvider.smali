.class public final Lcom/unity3d/services/core/di/ServiceProvider;
.super Ljava/lang/Object;
.source "ServiceProvider.kt"

# interfaces
.implements Lcom/unity3d/services/core/di/IServiceProvider;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nServiceProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ServiceProvider.kt\ncom/unity3d/services/core/di/ServiceProvider\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 RequestPolicyKt.kt\ngateway/v1/RequestPolicyKtKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 RequestRetryPolicyKt.kt\ngateway/v1/RequestRetryPolicyKtKt\n+ 6 RequestTimeoutPolicyKt.kt\ngateway/v1/RequestTimeoutPolicyKtKt\n+ 7 NativeConfigurationKt.kt\ngateway/v1/NativeConfigurationKtKt\n+ 8 DiagnosticEventsConfigurationKt.kt\ngateway/v1/DiagnosticEventsConfigurationKtKt\n*L\n1#1,1093:1\n314#2,11:1094\n8#3:1105\n1#4:1106\n1#4:1108\n1#4:1110\n1#4:1112\n1#4:1114\n8#5:1107\n8#6:1109\n8#7:1111\n8#8:1113\n*S KotlinDebug\n*F\n+ 1 ServiceProvider.kt\ncom/unity3d/services/core/di/ServiceProvider\n*L\n557#1:1094,11\n1026#1:1105\n1026#1:1106\n1033#1:1108\n1042#1:1110\n1050#1:1112\n1055#1:1114\n1033#1:1107\n1042#1:1109\n1050#1:1111\n1055#1:1113\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a2\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J!\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010$J\u0008\u0010%\u001a\u00020&H\u0002J\u0008\u0010\'\u001a\u00020(H\u0002J\u0008\u0010)\u001a\u00020*H\u0002J\u0008\u0010+\u001a\u00020\u001dH\u0016J\u0008\u0010,\u001a\u00020\u001dH\u0016J\u0008\u0010-\u001a\u00020.H\u0002J\u0010\u0010/\u001a\u0002002\u0006\u00101\u001a\u000202H\u0002J\u0008\u00103\u001a\u000204H\u0002J\u0016\u00105\u001a\u0008\u0012\u0004\u0012\u000207062\u0006\u0010 \u001a\u00020!H\u0002J,\u00108\u001a\u0008\u0012\u0004\u0012\u000207092\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u000c\u0010:\u001a\u0008\u0012\u0004\u0012\u00020706H\u0002J\u0016\u0010;\u001a\u00020<2\u000c\u0010=\u001a\u0008\u0012\u0004\u0012\u00020709H\u0002J&\u0010>\u001a\u0008\u0012\u0004\u0012\u000207092\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010?\u001a\u00020\u0004H\u0002J\u0010\u0010@\u001a\u00020A2\u0006\u0010B\u001a\u00020CH\u0002J\u000e\u0010D\u001a\u0008\u0012\u0004\u0012\u00020706H\u0002J\u0008\u0010E\u001a\u00020FH\u0002J \u0010G\u001a\u00020H2\u0006\u0010I\u001a\u00020J2\u0006\u0010K\u001a\u00020L2\u0006\u0010M\u001a\u00020NH\u0002J8\u0010O\u001a\u00020P2\u0006\u0010Q\u001a\u00020R2\u0006\u0010S\u001a\u00020T2\u0006\u0010\"\u001a\u00020#2\u0006\u0010U\u001a\u00020V2\u0006\u0010W\u001a\u00020X2\u0006\u0010Y\u001a\u00020ZH\u0002J\u0018\u0010[\u001a\u00020L2\u0006\u0010 \u001a\u00020!2\u0006\u0010\\\u001a\u00020]H\u0002J\u0018\u0010^\u001a\u00020_2\u0006\u0010\"\u001a\u00020#2\u0006\u0010`\u001a\u00020\u001fH\u0002J\u0016\u0010a\u001a\u0008\u0012\u0004\u0012\u000207062\u0006\u0010b\u001a\u00020cH\u0002J\u001e\u0010d\u001a\u0008\u0012\u0004\u0012\u000207092\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0002J \u0010e\u001a\u00020f2\u0006\u0010`\u001a\u00020\u001f2\u0006\u0010g\u001a\u00020h2\u0006\u0010i\u001a\u00020jH\u0002J(\u0010k\u001a\u00020l2\u0006\u0010Q\u001a\u00020R2\u0006\u00101\u001a\u0002022\u0006\u0010m\u001a\u00020H2\u0006\u0010n\u001a\u00020AH\u0002J(\u0010o\u001a\u00020p2\u0006\u0010Q\u001a\u00020R2\u0006\u00101\u001a\u0002022\u0006\u0010m\u001a\u00020H2\u0006\u0010n\u001a\u00020AH\u0002JP\u0010q\u001a\u00020r2\u0006\u0010s\u001a\u00020t2\u0006\u0010u\u001a\u00020v2\u0006\u0010w\u001a\u00020x2\u0006\u0010y\u001a\u00020z2\u0006\u00101\u001a\u0002022\u0006\u0010m\u001a\u00020H2\u0006\u0010n\u001a\u00020A2\u0006\u0010{\u001a\u00020|2\u0006\u0010i\u001a\u00020jH\u0002J\u0019\u0010}\u001a\u00020~2\u0006\u00101\u001a\u0002022\u0007\u0010\u007f\u001a\u00030\u0080\u0001H\u0002J\u001a\u0010\u0081\u0001\u001a\u00030\u0082\u00012\u0006\u0010Q\u001a\u00020R2\u0006\u0010m\u001a\u00020HH\u0002J5\u0010\u0083\u0001\u001a\u00030\u0084\u00012\u0006\u0010Q\u001a\u00020R2\u0007\u0010\u0085\u0001\u001a\u00020~2\u0006\u00101\u001a\u0002022\u0006\u0010m\u001a\u00020H2\u0008\u0010\u0086\u0001\u001a\u00030\u0087\u0001H\u0002J\u0011\u0010\u0088\u0001\u001a\u00020c2\u0006\u00101\u001a\u000202H\u0002J\t\u0010\u0089\u0001\u001a\u00020CH\u0002J\u0013\u0010\u008a\u0001\u001a\u00020R2\u0008\u0010\u008b\u0001\u001a\u00030\u008c\u0001H\u0002J,\u0010\u008d\u0001\u001a\u00030\u008c\u00012\u0006\u0010B\u001a\u00020C2\u0006\u00101\u001a\u0002022\u0006\u0010m\u001a\u00020H2\u0008\u0010\u008e\u0001\u001a\u00030\u008f\u0001H\u0002J\u0012\u0010\u0090\u0001\u001a\u00030\u0091\u00012\u0006\u0010\"\u001a\u00020#H\u0002J%\u0010\u0092\u0001\u001a\u00030\u0093\u00012\u0006\u0010 \u001a\u00020!2\u0007\u0010\u0094\u0001\u001a\u0002042\u0008\u0010\u0095\u0001\u001a\u00030\u0096\u0001H\u0002J.\u0010\u0097\u0001\u001a\u0008\u0012\u0004\u0012\u000207092\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\r\u0010\u0098\u0001\u001a\u0008\u0012\u0004\u0012\u00020706H\u0002Jj\u0010\u0099\u0001\u001a\u00030\u009a\u00012\u0007\u0010\u009b\u0001\u001a\u00020.2\u0008\u0010\u009c\u0001\u001a\u00030\u0093\u00012\u0008\u0010\u009d\u0001\u001a\u00030\u0091\u00012\u0006\u0010\"\u001a\u00020#2\u0006\u0010m\u001a\u00020H2\u0007\u0010\u009e\u0001\u001a\u00020r2\u0006\u00101\u001a\u0002022\u0006\u0010n\u001a\u00020A2\u0007\u0010\u009f\u0001\u001a\u00020_2\u0006\u0010i\u001a\u00020j2\u0007\u0010\u00a0\u0001\u001a\u00020vH\u0002J&\u0010\u00a1\u0001\u001a\u00030\u00a2\u00012\u0008\u0010\u00a3\u0001\u001a\u00030\u00a4\u00012\u0006\u00101\u001a\u0002022\u0008\u0010\u00a5\u0001\u001a\u00030\u00a6\u0001H\u0002J\u0019\u0010\u00a7\u0001\u001a\u00020h2\u0006\u00101\u001a\u0002022\u0006\u0010m\u001a\u00020HH\u0002J5\u0010\u00a8\u0001\u001a\u00020\u001f2\u0008\u0010\u00a9\u0001\u001a\u00030\u00aa\u00012\u0008\u0010\u00ab\u0001\u001a\u00030\u00ac\u00012\u0006\u0010\"\u001a\u00020#2\u0006\u0010i\u001a\u00020j2\u0006\u0010 \u001a\u00020!H\u0002J\u0017\u0010\u00ad\u0001\u001a\u0008\u0012\u0004\u0012\u000207062\u0006\u0010 \u001a\u00020!H\u0002J=\u0010\u00ae\u0001\u001a\u0008\u0012\u0004\u0012\u000207092\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\r\u0010\u00af\u0001\u001a\u0008\u0012\u0004\u0012\u000207062\r\u0010\u00b0\u0001\u001a\u0008\u0012\u0004\u0012\u00020706H\u0002J\u0011\u0010\u00b1\u0001\u001a\u0002002\u0006\u00101\u001a\u000202H\u0002J\u0080\u0001\u0010\u00b2\u0001\u001a\u00030\u00b3\u00012\u0006\u0010\"\u001a\u00020#2\u0008\u0010\u00b4\u0001\u001a\u00030\u0084\u00012\u0007\u0010\u00b5\u0001\u001a\u0002002\u0008\u0010\u00b6\u0001\u001a\u00030\u00a2\u00012\u0007\u0010\u00b7\u0001\u001a\u00020f2\u0006\u00101\u001a\u0002022\u0008\u0010\u00b8\u0001\u001a\u00030\u00b9\u00012\u0008\u0010\u00ba\u0001\u001a\u00030\u00bb\u00012\u0006\u0010i\u001a\u00020j2\u0006\u0010U\u001a\u00020V2\u0006\u0010m\u001a\u00020H2\u0008\u0010\u00bc\u0001\u001a\u00030\u00bd\u00012\u0008\u0010\u00be\u0001\u001a\u00030\u00bf\u0001H\u0002J\u0014\u0010\u00c0\u0001\u001a\u00030\u00c1\u00012\u0008\u0010\u00c2\u0001\u001a\u00030\u00c3\u0001H\u0002J6\u0010\u00c4\u0001\u001a\u00030\u00c5\u00012\u0007\u0010\u00c6\u0001\u001a\u00020#2\u0008\u0010\u00c7\u0001\u001a\u00030\u00c8\u00012\u0007\u0010\u009b\u0001\u001a\u00020.2\u0006\u0010i\u001a\u00020j2\u0006\u00101\u001a\u000202H\u0002J?\u0010\u00c9\u0001\u001a\u00030\u00ca\u00012\u0007\u0010\u00c6\u0001\u001a\u00020#2\u0008\u0010\u00cb\u0001\u001a\u00030\u00cc\u00012\u0007\u0010\u009b\u0001\u001a\u00020.2\u0006\u0010i\u001a\u00020j2\u0007\u0010\u00a0\u0001\u001a\u00020v2\u0006\u00101\u001a\u000202H\u0002J\t\u0010\u00cd\u0001\u001a\u00020]H\u0002JH\u0010\u00ce\u0001\u001a\u00030\u00c8\u00012\u0006\u0010\"\u001a\u00020#2\u0007\u0010\u00cf\u0001\u001a\u00020p2\u0007\u0010\u00d0\u0001\u001a\u0002002\u0008\u0010\u00d1\u0001\u001a\u00030\u009a\u00012\u0006\u00101\u001a\u0002022\u0007\u0010\u00b7\u0001\u001a\u00020f2\u0007\u0010\u009b\u0001\u001a\u00020.H\u0002J\u0014\u0010\u00d2\u0001\u001a\u00030\u00d3\u00012\u0008\u0010\u00d4\u0001\u001a\u00030\u00c1\u0001H\u0002J\u0014\u0010\u00d5\u0001\u001a\u00030\u0080\u00012\u0008\u0010\u00d6\u0001\u001a\u00030\u00d3\u0001H\u0002J4\u0010\u00d7\u0001\u001a\u00030\u00d8\u00012\u0006\u0010Q\u001a\u00020R2\u0006\u0010\"\u001a\u00020#2\u0008\u0010\u00d9\u0001\u001a\u00030\u00da\u00012\u0006\u0010W\u001a\u00020X2\u0006\u0010Y\u001a\u00020ZH\u0002J\u0011\u0010\u00db\u0001\u001a\u0002002\u0006\u00101\u001a\u000202H\u0002J\u0011\u0010\u00dc\u0001\u001a\u0002002\u0006\u00101\u001a\u000202H\u0002J\u0011\u0010\u00dd\u0001\u001a\u00020N2\u0006\u0010 \u001a\u00020!H\u0002J\u001f\u0010\u00de\u0001\u001a\u0008\u0012\u0004\u0012\u000207092\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0002J,\u0010\u00df\u0001\u001a\u00020x2\u0006\u0010\"\u001a\u00020#2\u0007\u0010\u00e0\u0001\u001a\u00020l2\u0007\u0010\u00e1\u0001\u001a\u0002002\u0007\u0010\u00b7\u0001\u001a\u00020fH\u0002J\t\u0010\u00e2\u0001\u001a\u00020#H\u0002J.\u0010\u00e3\u0001\u001a\u00030\u00e4\u00012\u0006\u0010\"\u001a\u00020#2\u0008\u0010\u00ab\u0001\u001a\u00030\u00ac\u00012\u0006\u0010i\u001a\u00020j2\u0008\u0010\u00e5\u0001\u001a\u00030\u00e6\u0001H\u0002J\n\u0010\u00e7\u0001\u001a\u00030\u00e6\u0001H\u0002J\u001c\u0010\u00e8\u0001\u001a\u00030\u00a6\u00012\u0006\u0010\"\u001a\u00020#2\u0008\u0010\u00e9\u0001\u001a\u00030\u00e4\u0001H\u0002J\u001a\u0010\u00ea\u0001\u001a\u00030\u0096\u00012\u0006\u0010\"\u001a\u00020#2\u0006\u0010i\u001a\u00020jH\u0002J-\u0010\u00eb\u0001\u001a\u0002022\u0007\u0010\u00ec\u0001\u001a\u00020<2\u0007\u0010\u00ed\u0001\u001a\u00020<2\u0007\u0010\u00ee\u0001\u001a\u00020<2\u0007\u0010\u00ef\u0001\u001a\u00020FH\u0002J\u001d\u0010\u00f0\u0001\u001a\u00030\u00cc\u00012\u0007\u0010\u009b\u0001\u001a\u00020.2\u0008\u0010\u00f1\u0001\u001a\u00030\u00f2\u0001H\u0002J6\u0010\u00f3\u0001\u001a\u00020J2\u0006\u0010 \u001a\u00020!2\u0007\u0010\u00f4\u0001\u001a\u00020<2\u0007\u0010\u00f5\u0001\u001a\u00020<2\u0007\u0010\u00f6\u0001\u001a\u00020<2\u0008\u0010\u00f7\u0001\u001a\u00030\u00f8\u0001H\u0002J&\u0010\u00f9\u0001\u001a\u00030\u00a4\u00012\u0008\u0010\u00fa\u0001\u001a\u00030\u0082\u00012\u0007\u0010\u00b5\u0001\u001a\u0002002\u0007\u0010\u00b7\u0001\u001a\u00020fH\u0002J\u0012\u0010\u00fb\u0001\u001a\u00030\u00bb\u00012\u0006\u0010\"\u001a\u00020#H\u0002J\u0018\u0010\u00fc\u0001\u001a\u00020X2\r\u0010=\u001a\t\u0012\u0005\u0012\u00030\u00fd\u000109H\u0002J \u0010\u00fe\u0001\u001a\t\u0012\u0005\u0012\u00030\u00fd\u0001092\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0002J\u001f\u0010\u00ff\u0001\u001a\u0008\u0012\u0004\u0012\u000207092\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0080\u0002"
    }
    d2 = {
        "Lcom/unity3d/services/core/di/ServiceProvider;",
        "Lcom/unity3d/services/core/di/IServiceProvider;",
        "()V",
        "DATA_STORE_AUID",
        "",
        "DATA_STORE_GATEWAY_CACHE",
        "DATA_STORE_GL_INFO",
        "DATA_STORE_IDFI",
        "DATA_STORE_PRIVACY",
        "DATA_STORE_PRIVACY_FSM",
        "DATA_STORE_UNIVERSAL_REQUEST",
        "DEV_CONSENT_PRIVACY_RULES",
        "GATEWAY_HOST",
        "GATEWAY_PORT",
        "",
        "HTTP_CACHE_DISK_SIZE",
        "",
        "HTTP_CLIENT_FETCH_TIMEOUT",
        "LEGACY_PRIVACY_RULES",
        "NAMED_AD_REQ",
        "NAMED_INIT_REQ",
        "NAMED_OPERATIVE_REQ",
        "NAMED_OTHER_REQ",
        "NAMED_SDK",
        "PREF_AUID",
        "PREF_DEFAULT",
        "PREF_GL_INFO",
        "PREF_IDFI",
        "serviceRegistry",
        "Lcom/unity3d/services/core/di/IServicesRegistry;",
        "buildNetworkClient",
        "Lcom/unity3d/services/core/network/core/HttpClient;",
        "context",
        "Landroid/content/Context;",
        "dispatchers",
        "Lcom/unity3d/services/core/domain/ISDKDispatchers;",
        "(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getDefaultRequestPolicy",
        "Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;",
        "getDefaultRequestRetryPolicy",
        "Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;",
        "getDefaultRequestTimeoutPolicy",
        "Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;",
        "getRegistry",
        "initialize",
        "provideAdRepository",
        "Lcom/unity3d/ads/core/data/repository/AdRepository;",
        "provideAdRequestPolicy",
        "Lcom/unity3d/ads/core/domain/GetRequestPolicy;",
        "sessionRepository",
        "Lcom/unity3d/ads/core/data/repository/SessionRepository;",
        "provideAndroidWebViewClient",
        "Lcom/unity3d/ads/adplayer/AndroidWebViewClient;",
        "provideAuidDataMigration",
        "Landroidx/datastore/core/DataMigration;",
        "LByteStringStoreOuterClass$ByteStringStore;",
        "provideAuidDataStore",
        "Landroidx/datastore/core/DataStore;",
        "auidMigration",
        "provideByteStringDataSource",
        "Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;",
        "dataStore",
        "provideByteStringDataStore",
        "dataStoreFile",
        "provideCampaignStateRepository",
        "Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;",
        "getSharedDataTimestamps",
        "Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;",
        "provideDefaultDataMigration",
        "provideDefaultNativeConfiguration",
        "Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;",
        "provideDeviceInfoRepository",
        "Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;",
        "staticDeviceInfoDataSource",
        "Lcom/unity3d/ads/core/data/datasource/StaticDeviceInfoDataSource;",
        "dynamicDeviceInfoDataSource",
        "Lcom/unity3d/ads/core/data/datasource/DynamicDeviceInfoDataSource;",
        "privacyDeviceInfoDataSource",
        "Lcom/unity3d/ads/core/data/datasource/PrivacyDeviceInfoDataSource;",
        "provideDiagnosticEventObserver",
        "Lcom/unity3d/ads/core/domain/events/DiagnosticEventObserver;",
        "getUniversalRequestForPayLoad",
        "Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;",
        "getDiagnosticEventBatchRequest",
        "Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventBatchRequest;",
        "diagnosticEventRepository",
        "Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;",
        "universalRequestDataSource",
        "Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;",
        "backgroundWorker",
        "Lcom/unity3d/ads/core/domain/work/BackgroundWorker;",
        "provideDynamicDeviceInfoDataSource",
        "lifecycleCache",
        "Lcom/unity3d/services/core/lifecycle/LifecycleCache;",
        "provideExecuteAdViewerRequest",
        "Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;",
        "httpClient",
        "provideFetchGLInfoDataMigration",
        "getOpenGLRendererInfo",
        "Lcom/unity3d/ads/core/domain/GetOpenGLRendererInfo;",
        "provideGatewayCacheDataStore",
        "provideGatewayClient",
        "Lcom/unity3d/ads/gatewayclient/GatewayClient;",
        "handleGatewayUniversalResponse",
        "Lcom/unity3d/ads/core/domain/HandleGatewayUniversalResponse;",
        "sendDiagnosticEvent",
        "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;",
        "provideGetAdDataRefreshRequest",
        "Lcom/unity3d/ads/core/domain/GetAdDataRefreshRequest;",
        "deviceInfoRepository",
        "campaignStateRepository",
        "provideGetAdRequest",
        "Lcom/unity3d/ads/core/domain/GetAdRequest;",
        "provideGetAndroidExposureUseCase",
        "Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;",
        "getAndroidAdPlayerContext",
        "Lcom/unity3d/ads/core/domain/GetAndroidAdPlayerContext;",
        "getOperativeEventApi",
        "Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;",
        "refresh",
        "Lcom/unity3d/ads/core/domain/Refresh;",
        "handleOpenUrl",
        "Lcom/unity3d/ads/core/domain/HandleOpenUrl;",
        "sendPrivacyUpdateRequest",
        "Lcom/unity3d/ads/core/domain/SendPrivacyUpdateRequest;",
        "provideGetClientInfo",
        "Lcom/unity3d/ads/core/domain/GetClientInfo;",
        "mediationRepository",
        "Lcom/unity3d/ads/core/data/repository/MediationRepository;",
        "provideGetInitializationCompletedRequest",
        "Lcom/unity3d/ads/core/domain/GetInitializationCompletedRequest;",
        "provideGetInitializationRequest",
        "Lcom/unity3d/ads/core/domain/GetInitializationRequest;",
        "getClientInfo",
        "legacyUserConsentRepository",
        "Lcom/unity3d/ads/core/data/repository/LegacyUserConsentRepository;",
        "provideGetOpenGLRendererInfo",
        "provideGetSharedDataTimestamps",
        "provideGetUniversalRequestForPayLoad",
        "getUniversalRequestSharedData",
        "Lcom/unity3d/ads/core/domain/GetUniversalRequestSharedData;",
        "provideGetUniversalRequestSharedData",
        "developerConsentRepository",
        "Lcom/unity3d/ads/core/data/repository/DeveloperConsentRepository;",
        "provideGetWebViewBridgeUseCase",
        "Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;",
        "provideGetWebViewContainerUseCase",
        "Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;",
        "androidWebViewClient",
        "sendWebViewClientErrorDiagnostics",
        "Lcom/unity3d/ads/core/domain/SendWebViewClientErrorDiagnostics;",
        "provideGlInfoDataStore",
        "fetchGLInfo",
        "provideHandleGatewayAdResponse",
        "Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;",
        "adRepository",
        "getWebViewContainerUseCase",
        "getWebViewBridge",
        "getHandleAndroidInvocationsUseCase",
        "executeAdViewerRequest",
        "operativeEventApi",
        "provideHandleGatewayInitializationResponse",
        "Lcom/unity3d/ads/core/domain/HandleGatewayInitializationResponse;",
        "triggerInitializationCompletedRequest",
        "Lcom/unity3d/ads/core/domain/TriggerInitializationCompletedRequest;",
        "sdkScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "provideHandleGatewayUniversalResponse",
        "provideHttpClient",
        "configFileFromLocalStorage",
        "Lcom/unity3d/services/core/domain/task/ConfigFileFromLocalStorage;",
        "alternativeFlowReader",
        "Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;",
        "provideIdfiDataMigration",
        "provideIdfiDataStore",
        "idfiMigration",
        "defaultIdfi",
        "provideInitRequestPolicy",
        "provideInitializeBoldSDK",
        "Lcom/unity3d/ads/core/domain/InitializeBoldSDK;",
        "getInitializeRequest",
        "getInitRequestPolicy",
        "handleGatewayInitializationResponse",
        "gatewayClient",
        "eventObservers",
        "Lcom/unity3d/ads/core/domain/events/EventObservers;",
        "triggerInitializeListener",
        "Lcom/unity3d/ads/core/domain/TriggerInitializeListener;",
        "storageManager",
        "Lcom/unity3d/ads/core/data/manager/StorageManager;",
        "sdkPropertiesManager",
        "Lcom/unity3d/ads/core/data/manager/SDKPropertiesManager;",
        "provideJsonStorage",
        "Lcom/unity3d/services/core/misc/JsonStorage;",
        "storageType",
        "Lcom/unity3d/services/core/device/StorageManager$StorageType;",
        "provideLegacyLoadUseCase",
        "Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;",
        "dispatcher",
        "load",
        "Lcom/unity3d/ads/core/domain/Load;",
        "provideLegacyShowUseCase",
        "Lcom/unity3d/ads/core/domain/LegacyShowUseCase;",
        "show",
        "Lcom/unity3d/ads/core/domain/Show;",
        "provideLifeCycleCache",
        "provideLoad",
        "getAdRequest",
        "getOtherRequestPolicy",
        "handleGatewayAdResponse",
        "provideMediationDataSource",
        "Lcom/unity3d/ads/core/data/datasource/MediationDataSource;",
        "publicStorage",
        "provideMediationRepository",
        "mediationDataSource",
        "provideOperativeEventObserver",
        "Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;",
        "operativeEventRepository",
        "Lcom/unity3d/ads/core/data/repository/OperativeEventRepository;",
        "provideOperativeEventRequestPolicy",
        "provideOtherRequestPolicy",
        "providePrivacyDeviceInfoDataSource",
        "providePrivacyFsmDataStore",
        "provideRefresh",
        "getAdDataRefreshRequest",
        "getRequestPolicy",
        "provideSDKDispatchers",
        "provideSDKErrorHandler",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "sdkMetricsSender",
        "Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;",
        "provideSDKMetricSender",
        "provideSDKScope",
        "errorHandler",
        "provideSendWebViewClientErrorDiagnostics",
        "provideSessionRepository",
        "gatewayCacheDataSource",
        "privacyDataSource",
        "privacyFsmDataSource",
        "nativeConfiguration",
        "provideShow",
        "gameServerIdReader",
        "Lcom/unity3d/ads/core/configuration/GameServerIdReader;",
        "provideStaticDeviceInfoDataSource",
        "idfiStore",
        "auidStore",
        "glInfoStore",
        "analyticsDataSource",
        "Lcom/unity3d/ads/core/data/datasource/AnalyticsDataSource;",
        "provideTriggerInitializationCompletedRequest",
        "getInitializationCompletedRequest",
        "provideTriggerInitializeListener",
        "provideUniversalRequestDataSource",
        "LUniversalRequestStoreOuterClass$UniversalRequestStore;",
        "provideUniversalRequestDataStore",
        "provideUserConsentDataStore",
        "unity-ads_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final DATA_STORE_AUID:Ljava/lang/String; = "auid.pb"

.field public static final DATA_STORE_GATEWAY_CACHE:Ljava/lang/String; = "gateway_cache.pb"

.field public static final DATA_STORE_GL_INFO:Ljava/lang/String; = "glinfo.pb"

.field public static final DATA_STORE_IDFI:Ljava/lang/String; = "idfi.pb"

.field public static final DATA_STORE_PRIVACY:Ljava/lang/String; = "privacy.pb"

.field public static final DATA_STORE_PRIVACY_FSM:Ljava/lang/String; = "privacy_fsm.pb"

.field public static final DATA_STORE_UNIVERSAL_REQUEST:Ljava/lang/String; = "universal_request.pb"

.field public static final DEV_CONSENT_PRIVACY_RULES:Ljava/lang/String; = "dev_consent_privacy_rules"

.field public static final GATEWAY_HOST:Ljava/lang/String; = "gateway.unityads.unity3d.com"

.field public static final GATEWAY_PORT:I = 0x1bb

.field public static final HTTP_CACHE_DISK_SIZE:J = 0x500000L

.field public static final HTTP_CLIENT_FETCH_TIMEOUT:J = 0x1f4L

.field public static final INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider;

.field public static final LEGACY_PRIVACY_RULES:Ljava/lang/String; = "legacy_privacy_rules"

.field public static final NAMED_AD_REQ:Ljava/lang/String; = "ad_req"

.field public static final NAMED_INIT_REQ:Ljava/lang/String; = "init_req"

.field public static final NAMED_OPERATIVE_REQ:Ljava/lang/String; = "op_event_req"

.field public static final NAMED_OTHER_REQ:Ljava/lang/String; = "other_req"

.field public static final NAMED_SDK:Ljava/lang/String; = "sdk"

.field public static final PREF_AUID:Ljava/lang/String; = "supersonic_shared_preferen"

.field public static final PREF_DEFAULT:Ljava/lang/String; = "default-migration"

.field public static final PREF_GL_INFO:Ljava/lang/String; = "glinfo"

.field public static final PREF_IDFI:Ljava/lang/String; = "unityads-installinfo"

.field private static final serviceRegistry:Lcom/unity3d/services/core/di/IServicesRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/unity3d/services/core/di/ServiceProvider;

    invoke-direct {v0}, Lcom/unity3d/services/core/di/ServiceProvider;-><init>()V

    sput-object v0, Lcom/unity3d/services/core/di/ServiceProvider;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider;

    .line 165
    invoke-virtual {v0}, Lcom/unity3d/services/core/di/ServiceProvider;->initialize()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object v0

    sput-object v0, Lcom/unity3d/services/core/di/ServiceProvider;->serviceRegistry:Lcom/unity3d/services/core/di/IServicesRegistry;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$buildNetworkClient(Lcom/unity3d/services/core/di/ServiceProvider;Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/services/core/di/ServiceProvider;->buildNetworkClient(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideAdRepository(Lcom/unity3d/services/core/di/ServiceProvider;)Lcom/unity3d/ads/core/data/repository/AdRepository;
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/unity3d/services/core/di/ServiceProvider;->provideAdRepository()Lcom/unity3d/ads/core/data/repository/AdRepository;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideAdRequestPolicy(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/core/domain/GetRequestPolicy;
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/unity3d/services/core/di/ServiceProvider;->provideAdRequestPolicy(Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/core/domain/GetRequestPolicy;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideAndroidWebViewClient(Lcom/unity3d/services/core/di/ServiceProvider;)Lcom/unity3d/ads/adplayer/AndroidWebViewClient;
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/unity3d/services/core/di/ServiceProvider;->provideAndroidWebViewClient()Lcom/unity3d/ads/adplayer/AndroidWebViewClient;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideAuidDataMigration(Lcom/unity3d/services/core/di/ServiceProvider;Landroid/content/Context;)Landroidx/datastore/core/DataMigration;
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/unity3d/services/core/di/ServiceProvider;->provideAuidDataMigration(Landroid/content/Context;)Landroidx/datastore/core/DataMigration;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideAuidDataStore(Lcom/unity3d/services/core/di/ServiceProvider;Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Landroidx/datastore/core/DataMigration;)Landroidx/datastore/core/DataStore;
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/services/core/di/ServiceProvider;->provideAuidDataStore(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Landroidx/datastore/core/DataMigration;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideByteStringDataSource(Lcom/unity3d/services/core/di/ServiceProvider;Landroidx/datastore/core/DataStore;)Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/unity3d/services/core/di/ServiceProvider;->provideByteStringDataSource(Landroidx/datastore/core/DataStore;)Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideCampaignStateRepository(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;)Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/unity3d/services/core/di/ServiceProvider;->provideCampaignStateRepository(Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;)Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideDefaultDataMigration(Lcom/unity3d/services/core/di/ServiceProvider;)Landroidx/datastore/core/DataMigration;
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/unity3d/services/core/di/ServiceProvider;->provideDefaultDataMigration()Landroidx/datastore/core/DataMigration;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideDefaultNativeConfiguration(Lcom/unity3d/services/core/di/ServiceProvider;)Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/unity3d/services/core/di/ServiceProvider;->provideDefaultNativeConfiguration()Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideDeviceInfoRepository(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/data/datasource/StaticDeviceInfoDataSource;Lcom/unity3d/ads/core/data/datasource/DynamicDeviceInfoDataSource;Lcom/unity3d/ads/core/data/datasource/PrivacyDeviceInfoDataSource;)Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/services/core/di/ServiceProvider;->provideDeviceInfoRepository(Lcom/unity3d/ads/core/data/datasource/StaticDeviceInfoDataSource;Lcom/unity3d/ads/core/data/datasource/DynamicDeviceInfoDataSource;Lcom/unity3d/ads/core/data/datasource/PrivacyDeviceInfoDataSource;)Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideDiagnosticEventObserver(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventBatchRequest;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;Lcom/unity3d/ads/core/domain/work/BackgroundWorker;)Lcom/unity3d/ads/core/domain/events/DiagnosticEventObserver;
    .locals 0

    .line 135
    invoke-direct/range {p0 .. p6}, Lcom/unity3d/services/core/di/ServiceProvider;->provideDiagnosticEventObserver(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventBatchRequest;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;Lcom/unity3d/ads/core/domain/work/BackgroundWorker;)Lcom/unity3d/ads/core/domain/events/DiagnosticEventObserver;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideDynamicDeviceInfoDataSource(Lcom/unity3d/services/core/di/ServiceProvider;Landroid/content/Context;Lcom/unity3d/services/core/lifecycle/LifecycleCache;)Lcom/unity3d/ads/core/data/datasource/DynamicDeviceInfoDataSource;
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/unity3d/services/core/di/ServiceProvider;->provideDynamicDeviceInfoDataSource(Landroid/content/Context;Lcom/unity3d/services/core/lifecycle/LifecycleCache;)Lcom/unity3d/ads/core/data/datasource/DynamicDeviceInfoDataSource;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideExecuteAdViewerRequest(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/services/core/network/core/HttpClient;)Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/unity3d/services/core/di/ServiceProvider;->provideExecuteAdViewerRequest(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/services/core/network/core/HttpClient;)Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideFetchGLInfoDataMigration(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/domain/GetOpenGLRendererInfo;)Landroidx/datastore/core/DataMigration;
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/unity3d/services/core/di/ServiceProvider;->provideFetchGLInfoDataMigration(Lcom/unity3d/ads/core/domain/GetOpenGLRendererInfo;)Landroidx/datastore/core/DataMigration;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideGatewayCacheDataStore(Lcom/unity3d/services/core/di/ServiceProvider;Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;)Landroidx/datastore/core/DataStore;
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/unity3d/services/core/di/ServiceProvider;->provideGatewayCacheDataStore(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideGatewayClient(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/services/core/network/core/HttpClient;Lcom/unity3d/ads/core/domain/HandleGatewayUniversalResponse;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)Lcom/unity3d/ads/gatewayclient/GatewayClient;
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/services/core/di/ServiceProvider;->provideGatewayClient(Lcom/unity3d/services/core/network/core/HttpClient;Lcom/unity3d/ads/core/domain/HandleGatewayUniversalResponse;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)Lcom/unity3d/ads/gatewayclient/GatewayClient;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideGetAdDataRefreshRequest(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;)Lcom/unity3d/ads/core/domain/GetAdDataRefreshRequest;
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unity3d/services/core/di/ServiceProvider;->provideGetAdDataRefreshRequest(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;)Lcom/unity3d/ads/core/domain/GetAdDataRefreshRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideGetAdRequest(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;)Lcom/unity3d/ads/core/domain/GetAdRequest;
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unity3d/services/core/di/ServiceProvider;->provideGetAdRequest(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;)Lcom/unity3d/ads/core/domain/GetAdRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideGetAndroidExposureUseCase(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/domain/GetAndroidAdPlayerContext;Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;Lcom/unity3d/ads/core/domain/Refresh;Lcom/unity3d/ads/core/domain/HandleOpenUrl;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;Lcom/unity3d/ads/core/domain/SendPrivacyUpdateRequest;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;
    .locals 0

    .line 135
    invoke-direct/range {p0 .. p9}, Lcom/unity3d/services/core/di/ServiceProvider;->provideGetAndroidExposureUseCase(Lcom/unity3d/ads/core/domain/GetAndroidAdPlayerContext;Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;Lcom/unity3d/ads/core/domain/Refresh;Lcom/unity3d/ads/core/domain/HandleOpenUrl;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;Lcom/unity3d/ads/core/domain/SendPrivacyUpdateRequest;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideGetClientInfo(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/MediationRepository;)Lcom/unity3d/ads/core/domain/GetClientInfo;
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/unity3d/services/core/di/ServiceProvider;->provideGetClientInfo(Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/MediationRepository;)Lcom/unity3d/ads/core/domain/GetClientInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideGetInitializationCompletedRequest(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;)Lcom/unity3d/ads/core/domain/GetInitializationCompletedRequest;
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/unity3d/services/core/di/ServiceProvider;->provideGetInitializationCompletedRequest(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;)Lcom/unity3d/ads/core/domain/GetInitializationCompletedRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideGetInitializationRequest(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/domain/GetClientInfo;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/LegacyUserConsentRepository;)Lcom/unity3d/ads/core/domain/GetInitializationRequest;
    .locals 0

    .line 135
    invoke-direct/range {p0 .. p5}, Lcom/unity3d/services/core/di/ServiceProvider;->provideGetInitializationRequest(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/domain/GetClientInfo;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/LegacyUserConsentRepository;)Lcom/unity3d/ads/core/domain/GetInitializationRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideGetOpenGLRendererInfo(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/core/domain/GetOpenGLRendererInfo;
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/unity3d/services/core/di/ServiceProvider;->provideGetOpenGLRendererInfo(Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/core/domain/GetOpenGLRendererInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideGetSharedDataTimestamps(Lcom/unity3d/services/core/di/ServiceProvider;)Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/unity3d/services/core/di/ServiceProvider;->provideGetSharedDataTimestamps()Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideGetUniversalRequestForPayLoad(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/domain/GetUniversalRequestSharedData;)Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/unity3d/services/core/di/ServiceProvider;->provideGetUniversalRequestForPayLoad(Lcom/unity3d/ads/core/domain/GetUniversalRequestSharedData;)Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideGetUniversalRequestSharedData(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/DeveloperConsentRepository;)Lcom/unity3d/ads/core/domain/GetUniversalRequestSharedData;
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unity3d/services/core/di/ServiceProvider;->provideGetUniversalRequestSharedData(Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/DeveloperConsentRepository;)Lcom/unity3d/ads/core/domain/GetUniversalRequestSharedData;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideGetWebViewBridgeUseCase(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/services/core/domain/ISDKDispatchers;)Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/unity3d/services/core/di/ServiceProvider;->provideGetWebViewBridgeUseCase(Lcom/unity3d/services/core/domain/ISDKDispatchers;)Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideGetWebViewContainerUseCase(Lcom/unity3d/services/core/di/ServiceProvider;Landroid/content/Context;Lcom/unity3d/ads/adplayer/AndroidWebViewClient;Lcom/unity3d/ads/core/domain/SendWebViewClientErrorDiagnostics;)Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/services/core/di/ServiceProvider;->provideGetWebViewContainerUseCase(Landroid/content/Context;Lcom/unity3d/ads/adplayer/AndroidWebViewClient;Lcom/unity3d/ads/core/domain/SendWebViewClientErrorDiagnostics;)Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideGlInfoDataStore(Lcom/unity3d/services/core/di/ServiceProvider;Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Landroidx/datastore/core/DataMigration;)Landroidx/datastore/core/DataStore;
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/services/core/di/ServiceProvider;->provideGlInfoDataStore(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Landroidx/datastore/core/DataMigration;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideHandleGatewayAdResponse(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;)Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;
    .locals 0

    .line 135
    invoke-direct/range {p0 .. p11}, Lcom/unity3d/services/core/di/ServiceProvider;->provideHandleGatewayAdResponse(Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;)Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideHandleGatewayInitializationResponse(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/domain/TriggerInitializationCompletedRequest;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lkotlinx/coroutines/CoroutineScope;)Lcom/unity3d/ads/core/domain/HandleGatewayInitializationResponse;
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/services/core/di/ServiceProvider;->provideHandleGatewayInitializationResponse(Lcom/unity3d/ads/core/domain/TriggerInitializationCompletedRequest;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lkotlinx/coroutines/CoroutineScope;)Lcom/unity3d/ads/core/domain/HandleGatewayInitializationResponse;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideHandleGatewayUniversalResponse(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;)Lcom/unity3d/ads/core/domain/HandleGatewayUniversalResponse;
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/unity3d/services/core/di/ServiceProvider;->provideHandleGatewayUniversalResponse(Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;)Lcom/unity3d/ads/core/domain/HandleGatewayUniversalResponse;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideHttpClient(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/services/core/domain/task/ConfigFileFromLocalStorage;Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Landroid/content/Context;)Lcom/unity3d/services/core/network/core/HttpClient;
    .locals 0

    .line 135
    invoke-direct/range {p0 .. p5}, Lcom/unity3d/services/core/di/ServiceProvider;->provideHttpClient(Lcom/unity3d/services/core/domain/task/ConfigFileFromLocalStorage;Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Landroid/content/Context;)Lcom/unity3d/services/core/network/core/HttpClient;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideIdfiDataMigration(Lcom/unity3d/services/core/di/ServiceProvider;Landroid/content/Context;)Landroidx/datastore/core/DataMigration;
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/unity3d/services/core/di/ServiceProvider;->provideIdfiDataMigration(Landroid/content/Context;)Landroidx/datastore/core/DataMigration;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideIdfiDataStore(Lcom/unity3d/services/core/di/ServiceProvider;Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Landroidx/datastore/core/DataMigration;Landroidx/datastore/core/DataMigration;)Landroidx/datastore/core/DataStore;
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unity3d/services/core/di/ServiceProvider;->provideIdfiDataStore(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Landroidx/datastore/core/DataMigration;Landroidx/datastore/core/DataMigration;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideInitRequestPolicy(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/core/domain/GetRequestPolicy;
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/unity3d/services/core/di/ServiceProvider;->provideInitRequestPolicy(Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/core/domain/GetRequestPolicy;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideInitializeBoldSDK(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/GetInitializationRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/core/domain/HandleGatewayInitializationResponse;Lcom/unity3d/ads/gatewayclient/GatewayClient;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/domain/events/EventObservers;Lcom/unity3d/ads/core/domain/TriggerInitializeListener;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/manager/StorageManager;Lcom/unity3d/ads/core/data/manager/SDKPropertiesManager;)Lcom/unity3d/ads/core/domain/InitializeBoldSDK;
    .locals 0

    .line 135
    invoke-direct/range {p0 .. p13}, Lcom/unity3d/services/core/di/ServiceProvider;->provideInitializeBoldSDK(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/GetInitializationRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/core/domain/HandleGatewayInitializationResponse;Lcom/unity3d/ads/gatewayclient/GatewayClient;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/domain/events/EventObservers;Lcom/unity3d/ads/core/domain/TriggerInitializeListener;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/manager/StorageManager;Lcom/unity3d/ads/core/data/manager/SDKPropertiesManager;)Lcom/unity3d/ads/core/domain/InitializeBoldSDK;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideJsonStorage(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/services/core/device/StorageManager$StorageType;)Lcom/unity3d/services/core/misc/JsonStorage;
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/unity3d/services/core/di/ServiceProvider;->provideJsonStorage(Lcom/unity3d/services/core/device/StorageManager$StorageType;)Lcom/unity3d/services/core/misc/JsonStorage;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideLegacyLoadUseCase(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/Load;Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;
    .locals 0

    .line 135
    invoke-direct/range {p0 .. p5}, Lcom/unity3d/services/core/di/ServiceProvider;->provideLegacyLoadUseCase(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/Load;Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideLegacyShowUseCase(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/Show;Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/core/domain/LegacyShowUseCase;
    .locals 0

    .line 135
    invoke-direct/range {p0 .. p6}, Lcom/unity3d/services/core/di/ServiceProvider;->provideLegacyShowUseCase(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/Show;Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/core/domain/LegacyShowUseCase;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideLifeCycleCache(Lcom/unity3d/services/core/di/ServiceProvider;)Lcom/unity3d/services/core/lifecycle/LifecycleCache;
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/unity3d/services/core/di/ServiceProvider;->provideLifeCycleCache()Lcom/unity3d/services/core/lifecycle/LifecycleCache;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideLoad(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/GetAdRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/gatewayclient/GatewayClient;Lcom/unity3d/ads/core/data/repository/AdRepository;)Lcom/unity3d/ads/core/domain/Load;
    .locals 0

    .line 135
    invoke-direct/range {p0 .. p7}, Lcom/unity3d/services/core/di/ServiceProvider;->provideLoad(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/GetAdRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/gatewayclient/GatewayClient;Lcom/unity3d/ads/core/data/repository/AdRepository;)Lcom/unity3d/ads/core/domain/Load;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideMediationDataSource(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/services/core/misc/JsonStorage;)Lcom/unity3d/ads/core/data/datasource/MediationDataSource;
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/unity3d/services/core/di/ServiceProvider;->provideMediationDataSource(Lcom/unity3d/services/core/misc/JsonStorage;)Lcom/unity3d/ads/core/data/datasource/MediationDataSource;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideMediationRepository(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/data/datasource/MediationDataSource;)Lcom/unity3d/ads/core/data/repository/MediationRepository;
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/unity3d/services/core/di/ServiceProvider;->provideMediationRepository(Lcom/unity3d/ads/core/data/datasource/MediationDataSource;)Lcom/unity3d/ads/core/data/repository/MediationRepository;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideOperativeEventObserver(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/data/repository/OperativeEventRepository;Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;Lcom/unity3d/ads/core/domain/work/BackgroundWorker;)Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;
    .locals 0

    .line 135
    invoke-direct/range {p0 .. p5}, Lcom/unity3d/services/core/di/ServiceProvider;->provideOperativeEventObserver(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/data/repository/OperativeEventRepository;Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;Lcom/unity3d/ads/core/domain/work/BackgroundWorker;)Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideOperativeEventRequestPolicy(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/core/domain/GetRequestPolicy;
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/unity3d/services/core/di/ServiceProvider;->provideOperativeEventRequestPolicy(Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/core/domain/GetRequestPolicy;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideOtherRequestPolicy(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/core/domain/GetRequestPolicy;
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/unity3d/services/core/di/ServiceProvider;->provideOtherRequestPolicy(Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/core/domain/GetRequestPolicy;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$providePrivacyDeviceInfoDataSource(Lcom/unity3d/services/core/di/ServiceProvider;Landroid/content/Context;)Lcom/unity3d/ads/core/data/datasource/PrivacyDeviceInfoDataSource;
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/unity3d/services/core/di/ServiceProvider;->providePrivacyDeviceInfoDataSource(Landroid/content/Context;)Lcom/unity3d/ads/core/data/datasource/PrivacyDeviceInfoDataSource;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$providePrivacyFsmDataStore(Lcom/unity3d/services/core/di/ServiceProvider;Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;)Landroidx/datastore/core/DataStore;
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/unity3d/services/core/di/ServiceProvider;->providePrivacyFsmDataStore(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideRefresh(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/GetAdDataRefreshRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/gatewayclient/GatewayClient;)Lcom/unity3d/ads/core/domain/Refresh;
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unity3d/services/core/di/ServiceProvider;->provideRefresh(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/GetAdDataRefreshRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/gatewayclient/GatewayClient;)Lcom/unity3d/ads/core/domain/Refresh;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideSDKDispatchers(Lcom/unity3d/services/core/di/ServiceProvider;)Lcom/unity3d/services/core/domain/ISDKDispatchers;
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/unity3d/services/core/di/ServiceProvider;->provideSDKDispatchers()Lcom/unity3d/services/core/domain/ISDKDispatchers;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideSDKErrorHandler(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;)Lkotlinx/coroutines/CoroutineExceptionHandler;
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unity3d/services/core/di/ServiceProvider;->provideSDKErrorHandler(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;)Lkotlinx/coroutines/CoroutineExceptionHandler;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideSDKMetricSender(Lcom/unity3d/services/core/di/ServiceProvider;)Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/unity3d/services/core/di/ServiceProvider;->provideSDKMetricSender()Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideSDKScope(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lkotlinx/coroutines/CoroutineExceptionHandler;)Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/unity3d/services/core/di/ServiceProvider;->provideSDKScope(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lkotlinx/coroutines/CoroutineExceptionHandler;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideSendWebViewClientErrorDiagnostics(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)Lcom/unity3d/ads/core/domain/SendWebViewClientErrorDiagnostics;
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/unity3d/services/core/di/ServiceProvider;->provideSendWebViewClientErrorDiagnostics(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)Lcom/unity3d/ads/core/domain/SendWebViewClientErrorDiagnostics;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideSessionRepository(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;)Lcom/unity3d/ads/core/data/repository/SessionRepository;
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unity3d/services/core/di/ServiceProvider;->provideSessionRepository(Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;)Lcom/unity3d/ads/core/data/repository/SessionRepository;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideShow(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/configuration/GameServerIdReader;)Lcom/unity3d/ads/core/domain/Show;
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/unity3d/services/core/di/ServiceProvider;->provideShow(Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/configuration/GameServerIdReader;)Lcom/unity3d/ads/core/domain/Show;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideStaticDeviceInfoDataSource(Lcom/unity3d/services/core/di/ServiceProvider;Landroid/content/Context;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/AnalyticsDataSource;)Lcom/unity3d/ads/core/data/datasource/StaticDeviceInfoDataSource;
    .locals 0

    .line 135
    invoke-direct/range {p0 .. p5}, Lcom/unity3d/services/core/di/ServiceProvider;->provideStaticDeviceInfoDataSource(Landroid/content/Context;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/AnalyticsDataSource;)Lcom/unity3d/ads/core/data/datasource/StaticDeviceInfoDataSource;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideTriggerInitializationCompletedRequest(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/domain/GetInitializationCompletedRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/gatewayclient/GatewayClient;)Lcom/unity3d/ads/core/domain/TriggerInitializationCompletedRequest;
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/services/core/di/ServiceProvider;->provideTriggerInitializationCompletedRequest(Lcom/unity3d/ads/core/domain/GetInitializationCompletedRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/gatewayclient/GatewayClient;)Lcom/unity3d/ads/core/domain/TriggerInitializationCompletedRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideTriggerInitializeListener(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/services/core/domain/ISDKDispatchers;)Lcom/unity3d/ads/core/domain/TriggerInitializeListener;
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/unity3d/services/core/di/ServiceProvider;->provideTriggerInitializeListener(Lcom/unity3d/services/core/domain/ISDKDispatchers;)Lcom/unity3d/ads/core/domain/TriggerInitializeListener;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideUniversalRequestDataSource(Lcom/unity3d/services/core/di/ServiceProvider;Landroidx/datastore/core/DataStore;)Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/unity3d/services/core/di/ServiceProvider;->provideUniversalRequestDataSource(Landroidx/datastore/core/DataStore;)Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideUniversalRequestDataStore(Lcom/unity3d/services/core/di/ServiceProvider;Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;)Landroidx/datastore/core/DataStore;
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/unity3d/services/core/di/ServiceProvider;->provideUniversalRequestDataStore(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideUserConsentDataStore(Lcom/unity3d/services/core/di/ServiceProvider;Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;)Landroidx/datastore/core/DataStore;
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/unity3d/services/core/di/ServiceProvider;->provideUserConsentDataStore(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    return-object p0
.end method

.method private final buildNetworkClient(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/unity3d/services/core/domain/ISDKDispatchers;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/services/core/network/core/HttpClient;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1095
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 1101
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 1102
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .line 558
    invoke-static {p1}, Lcom/google/android/gms/net/CronetProviderInstaller;->installProvider(Landroid/content/Context;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, Lcom/unity3d/services/core/di/ServiceProvider$buildNetworkClient$2$1;

    invoke-direct {v3, p1, v1, p2}, Lcom/unity3d/services/core/di/ServiceProvider$buildNetworkClient$2$1;-><init>(Landroid/content/Context;Lkotlinx/coroutines/CancellableContinuation;Lcom/unity3d/services/core/domain/ISDKDispatchers;)V

    check-cast v3, Lcom/google/android/gms/tasks/OnCompleteListener;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 1103
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 1094
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p1
.end method

.method private final getDefaultRequestPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;
    .locals 3

    .line 1105
    sget-object v0, Lgateway/v1/RequestPolicyKt$Dsl;->Companion:Lgateway/v1/RequestPolicyKt$Dsl$Companion;

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->newBuilder()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;

    move-result-object v1

    const-string v2, "newBuilder()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgateway/v1/RequestPolicyKt$Dsl$Companion;->_create(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;)Lgateway/v1/RequestPolicyKt$Dsl;

    move-result-object v0

    .line 1027
    sget-object v1, Lcom/unity3d/services/core/di/ServiceProvider;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider;

    invoke-direct {v1}, Lcom/unity3d/services/core/di/ServiceProvider;->getDefaultRequestRetryPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgateway/v1/RequestPolicyKt$Dsl;->setRetryPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;)V

    .line 1028
    invoke-direct {v1}, Lcom/unity3d/services/core/di/ServiceProvider;->getDefaultRequestTimeoutPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgateway/v1/RequestPolicyKt$Dsl;->setTimeoutPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;)V

    .line 1105
    invoke-virtual {v0}, Lgateway/v1/RequestPolicyKt$Dsl;->_build()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v0

    return-object v0
.end method

.method private final getDefaultRequestRetryPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;
    .locals 3

    .line 1107
    sget-object v0, Lgateway/v1/RequestRetryPolicyKt$Dsl;->Companion:Lgateway/v1/RequestRetryPolicyKt$Dsl$Companion;

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->newBuilder()Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;

    move-result-object v1

    const-string v2, "newBuilder()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgateway/v1/RequestRetryPolicyKt$Dsl$Companion;->_create(Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;)Lgateway/v1/RequestRetryPolicyKt$Dsl;

    move-result-object v0

    const/16 v1, 0x7530

    .line 1034
    invoke-virtual {v0, v1}, Lgateway/v1/RequestRetryPolicyKt$Dsl;->setMaxDuration(I)V

    .line 1035
    invoke-virtual {v0, v1}, Lgateway/v1/RequestRetryPolicyKt$Dsl;->setRetryWaitBase(I)V

    const v1, 0x3dcccccd    # 0.1f

    .line 1036
    invoke-virtual {v0, v1}, Lgateway/v1/RequestRetryPolicyKt$Dsl;->setRetryJitterPct(F)V

    const/4 v1, 0x0

    .line 1037
    invoke-virtual {v0, v1}, Lgateway/v1/RequestRetryPolicyKt$Dsl;->setShouldStoreLocally(Z)V

    .line 1107
    invoke-virtual {v0}, Lgateway/v1/RequestRetryPolicyKt$Dsl;->_build()Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    move-result-object v0

    return-object v0
.end method

.method private final getDefaultRequestTimeoutPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;
    .locals 3

    .line 1109
    sget-object v0, Lgateway/v1/RequestTimeoutPolicyKt$Dsl;->Companion:Lgateway/v1/RequestTimeoutPolicyKt$Dsl$Companion;

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->newBuilder()Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy$Builder;

    move-result-object v1

    const-string v2, "newBuilder()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgateway/v1/RequestTimeoutPolicyKt$Dsl$Companion;->_create(Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy$Builder;)Lgateway/v1/RequestTimeoutPolicyKt$Dsl;

    move-result-object v0

    const/16 v1, 0x7530

    .line 1043
    invoke-virtual {v0, v1}, Lgateway/v1/RequestTimeoutPolicyKt$Dsl;->setConnectTimeoutMs(I)V

    .line 1044
    invoke-virtual {v0, v1}, Lgateway/v1/RequestTimeoutPolicyKt$Dsl;->setReadTimeoutMs(I)V

    .line 1045
    invoke-virtual {v0, v1}, Lgateway/v1/RequestTimeoutPolicyKt$Dsl;->setWriteTimeoutMs(I)V

    .line 1109
    invoke-virtual {v0}, Lgateway/v1/RequestTimeoutPolicyKt$Dsl;->_build()Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    move-result-object v0

    return-object v0
.end method

.method private final provideAdRepository()Lcom/unity3d/ads/core/data/repository/AdRepository;
    .locals 1

    .line 835
    new-instance v0, Lcom/unity3d/ads/core/data/repository/AndroidAdRepository;

    invoke-direct {v0}, Lcom/unity3d/ads/core/data/repository/AndroidAdRepository;-><init>()V

    check-cast v0, Lcom/unity3d/ads/core/data/repository/AdRepository;

    return-object v0
.end method

.method private final provideAdRequestPolicy(Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/core/domain/GetRequestPolicy;
    .locals 1

    .line 432
    new-instance v0, Lcom/unity3d/ads/core/domain/GetAdRequestPolicy;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/domain/GetAdRequestPolicy;-><init>(Lcom/unity3d/ads/core/data/repository/SessionRepository;)V

    check-cast v0, Lcom/unity3d/ads/core/domain/GetRequestPolicy;

    return-object v0
.end method

.method private final provideAndroidWebViewClient()Lcom/unity3d/ads/adplayer/AndroidWebViewClient;
    .locals 1

    .line 866
    new-instance v0, Lcom/unity3d/ads/adplayer/AndroidWebViewClient;

    invoke-direct {v0}, Lcom/unity3d/ads/adplayer/AndroidWebViewClient;-><init>()V

    return-object v0
.end method

.method private final provideAuidDataMigration(Landroid/content/Context;)Landroidx/datastore/core/DataMigration;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroidx/datastore/core/DataMigration<",
            "LByteStringStoreOuterClass$ByteStringStore;",
            ">;"
        }
    .end annotation

    .line 944
    new-instance v0, Lcom/unity3d/ads/core/data/datasource/ForcefulPreservingByteStringPreferenceMigration;

    .line 948
    new-instance v1, Lcom/unity3d/ads/core/data/datasource/GetAuidData;

    invoke-direct {v1}, Lcom/unity3d/ads/core/data/datasource/GetAuidData;-><init>()V

    check-cast v1, Lcom/unity3d/ads/core/data/datasource/GetByteStringData;

    .line 944
    const-string v2, "supersonic_shared_preferen"

    const-string v3, "auid"

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/unity3d/ads/core/data/datasource/ForcefulPreservingByteStringPreferenceMigration;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/data/datasource/GetByteStringData;)V

    check-cast v0, Landroidx/datastore/core/DataMigration;

    return-object v0
.end method

.method private final provideAuidDataStore(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Landroidx/datastore/core/DataMigration;)Landroidx/datastore/core/DataStore;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/unity3d/services/core/domain/ISDKDispatchers;",
            "Landroidx/datastore/core/DataMigration<",
            "LByteStringStoreOuterClass$ByteStringStore;",
            ">;)",
            "Landroidx/datastore/core/DataStore<",
            "LByteStringStoreOuterClass$ByteStringStore;",
            ">;"
        }
    .end annotation

    .line 916
    sget-object v0, Landroidx/datastore/core/DataStoreFactory;->INSTANCE:Landroidx/datastore/core/DataStoreFactory;

    .line 917
    new-instance v1, Lcom/unity3d/ads/core/data/model/ByteStringSerializer;

    invoke-direct {v1}, Lcom/unity3d/ads/core/data/model/ByteStringSerializer;-><init>()V

    .line 919
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 920
    new-instance v2, Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;

    sget-object p3, Lcom/unity3d/services/core/di/ServiceProvider$provideAuidDataStore$1;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider$provideAuidDataStore$1;

    check-cast p3, Lkotlin/jvm/functions/Function1;

    invoke-direct {v2, p3}, Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 925
    invoke-interface {p2}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v4, 0x1

    invoke-static {p3, v4, p3}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p3

    check-cast p3, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {p2, p3}, Lkotlinx/coroutines/CoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    .line 917
    check-cast v1, Landroidx/datastore/core/Serializer;

    .line 916
    new-instance p2, Lcom/unity3d/services/core/di/ServiceProvider$provideAuidDataStore$2;

    invoke-direct {p2, p1}, Lcom/unity3d/services/core/di/ServiceProvider$provideAuidDataStore$2;-><init>(Landroid/content/Context;)V

    move-object v5, p2

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/core/DataStoreFactory;->create(Landroidx/datastore/core/Serializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;)Landroidx/datastore/core/DataStore;

    move-result-object p1

    return-object p1
.end method

.method private final provideByteStringDataSource(Landroidx/datastore/core/DataStore;)Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/core/DataStore<",
            "LByteStringStoreOuterClass$ByteStringStore;",
            ">;)",
            "Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;"
        }
    .end annotation

    .line 652
    new-instance v0, Lcom/unity3d/ads/core/data/datasource/AndroidByteStringDataSource;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/data/datasource/AndroidByteStringDataSource;-><init>(Landroidx/datastore/core/DataStore;)V

    check-cast v0, Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;

    return-object v0
.end method

.method private final provideByteStringDataStore(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Ljava/lang/String;)Landroidx/datastore/core/DataStore;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/unity3d/services/core/domain/ISDKDispatchers;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/datastore/core/DataStore<",
            "LByteStringStoreOuterClass$ByteStringStore;",
            ">;"
        }
    .end annotation

    .line 983
    sget-object v0, Landroidx/datastore/core/DataStoreFactory;->INSTANCE:Landroidx/datastore/core/DataStoreFactory;

    .line 984
    new-instance v1, Lcom/unity3d/ads/core/data/model/ByteStringSerializer;

    invoke-direct {v1}, Lcom/unity3d/ads/core/data/model/ByteStringSerializer;-><init>()V

    .line 987
    invoke-interface {p2}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v3, v2}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {p2, v2}, Lkotlinx/coroutines/CoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    .line 984
    check-cast v1, Landroidx/datastore/core/Serializer;

    .line 983
    new-instance p2, Lcom/unity3d/services/core/di/ServiceProvider$provideByteStringDataStore$1;

    invoke-direct {p2, p1, p3}, Lcom/unity3d/services/core/di/ServiceProvider$provideByteStringDataStore$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v5, p2

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v7}, Landroidx/datastore/core/DataStoreFactory;->create$default(Landroidx/datastore/core/DataStoreFactory;Landroidx/datastore/core/Serializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/datastore/core/DataStore;

    move-result-object p1

    return-object p1
.end method

.method private final provideCampaignStateRepository(Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;)Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;
    .locals 1

    .line 841
    new-instance v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;-><init>(Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;)V

    check-cast v0, Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;

    return-object v0
.end method

.method private final provideDefaultDataMigration()Landroidx/datastore/core/DataMigration;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/core/DataMigration<",
            "LByteStringStoreOuterClass$ByteStringStore;",
            ">;"
        }
    .end annotation

    .line 963
    new-instance v0, Lcom/unity3d/ads/core/data/datasource/DefaultByteStringMigration;

    .line 966
    new-instance v1, Lcom/unity3d/ads/core/data/datasource/GetIdfiData;

    invoke-direct {v1}, Lcom/unity3d/ads/core/data/datasource/GetIdfiData;-><init>()V

    check-cast v1, Lcom/unity3d/ads/core/data/datasource/GetPreferenceString;

    .line 963
    const-string v2, "unityads-installinfo"

    const-string v3, "unityads-idfi"

    invoke-direct {v0, v2, v3, v1}, Lcom/unity3d/ads/core/data/datasource/DefaultByteStringMigration;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/data/datasource/GetPreferenceString;)V

    check-cast v0, Landroidx/datastore/core/DataMigration;

    return-object v0
.end method

.method private final provideDefaultNativeConfiguration()Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .locals 4

    .line 1111
    sget-object v0, Lgateway/v1/NativeConfigurationKt$Dsl;->Companion:Lgateway/v1/NativeConfigurationKt$Dsl$Companion;

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->newBuilder()Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    move-result-object v1

    const-string v2, "newBuilder()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgateway/v1/NativeConfigurationKt$Dsl$Companion;->_create(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;)Lgateway/v1/NativeConfigurationKt$Dsl;

    move-result-object v0

    .line 1051
    sget-object v1, Lcom/unity3d/services/core/di/ServiceProvider;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider;

    invoke-direct {v1}, Lcom/unity3d/services/core/di/ServiceProvider;->getDefaultRequestPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgateway/v1/NativeConfigurationKt$Dsl;->setInitPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V

    .line 1052
    invoke-direct {v1}, Lcom/unity3d/services/core/di/ServiceProvider;->getDefaultRequestPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgateway/v1/NativeConfigurationKt$Dsl;->setAdPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V

    .line 1053
    invoke-direct {v1}, Lcom/unity3d/services/core/di/ServiceProvider;->getDefaultRequestPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgateway/v1/NativeConfigurationKt$Dsl;->setOtherPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V

    .line 1054
    invoke-direct {v1}, Lcom/unity3d/services/core/di/ServiceProvider;->getDefaultRequestPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgateway/v1/NativeConfigurationKt$Dsl;->setOperativeEventPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V

    .line 1113
    sget-object v1, Lgateway/v1/DiagnosticEventsConfigurationKt$Dsl;->Companion:Lgateway/v1/DiagnosticEventsConfigurationKt$Dsl$Companion;

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->newBuilder()Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$Builder;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lgateway/v1/DiagnosticEventsConfigurationKt$Dsl$Companion;->_create(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$Builder;)Lgateway/v1/DiagnosticEventsConfigurationKt$Dsl;

    move-result-object v1

    const/4 v2, 0x0

    .line 1056
    invoke-virtual {v1, v2}, Lgateway/v1/DiagnosticEventsConfigurationKt$Dsl;->setEnabled(Z)V

    const/4 v3, 0x1

    .line 1057
    invoke-virtual {v1, v3}, Lgateway/v1/DiagnosticEventsConfigurationKt$Dsl;->setMaxBatchSize(I)V

    const/16 v3, 0x3e8

    .line 1058
    invoke-virtual {v1, v3}, Lgateway/v1/DiagnosticEventsConfigurationKt$Dsl;->setMaxBatchIntervalMs(I)V

    .line 1059
    invoke-virtual {v1, v2}, Lgateway/v1/DiagnosticEventsConfigurationKt$Dsl;->setTtmEnabled(Z)V

    .line 1113
    invoke-virtual {v1}, Lgateway/v1/DiagnosticEventsConfigurationKt$Dsl;->_build()Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    move-result-object v1

    .line 1055
    invoke-virtual {v0, v1}, Lgateway/v1/NativeConfigurationKt$Dsl;->setDiagnosticEvents(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)V

    .line 1111
    invoke-virtual {v0}, Lgateway/v1/NativeConfigurationKt$Dsl;->_build()Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    move-result-object v0

    return-object v0
.end method

.method private final provideDeviceInfoRepository(Lcom/unity3d/ads/core/data/datasource/StaticDeviceInfoDataSource;Lcom/unity3d/ads/core/data/datasource/DynamicDeviceInfoDataSource;Lcom/unity3d/ads/core/data/datasource/PrivacyDeviceInfoDataSource;)Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;
    .locals 1

    .line 704
    new-instance v0, Lcom/unity3d/ads/core/data/repository/AndroidDeviceInfoRepository;

    invoke-direct {v0, p1, p2, p3}, Lcom/unity3d/ads/core/data/repository/AndroidDeviceInfoRepository;-><init>(Lcom/unity3d/ads/core/data/datasource/StaticDeviceInfoDataSource;Lcom/unity3d/ads/core/data/datasource/DynamicDeviceInfoDataSource;Lcom/unity3d/ads/core/data/datasource/PrivacyDeviceInfoDataSource;)V

    check-cast v0, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    return-object v0
.end method

.method private final provideDiagnosticEventObserver(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventBatchRequest;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;Lcom/unity3d/ads/core/domain/work/BackgroundWorker;)Lcom/unity3d/ads/core/domain/events/DiagnosticEventObserver;
    .locals 7

    .line 455
    new-instance v0, Lcom/unity3d/ads/core/domain/events/DiagnosticEventObserver;

    .line 458
    invoke-interface {p3}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 455
    invoke-direct/range {v0 .. v6}, Lcom/unity3d/ads/core/domain/events/DiagnosticEventObserver;-><init>(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventBatchRequest;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;Lcom/unity3d/ads/core/domain/work/BackgroundWorker;)V

    return-object v0
.end method

.method private final provideDynamicDeviceInfoDataSource(Landroid/content/Context;Lcom/unity3d/services/core/lifecycle/LifecycleCache;)Lcom/unity3d/ads/core/data/datasource/DynamicDeviceInfoDataSource;
    .locals 1

    .line 731
    new-instance v0, Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource;

    invoke-direct {v0, p1, p2}, Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource;-><init>(Landroid/content/Context;Lcom/unity3d/services/core/lifecycle/LifecycleCache;)V

    check-cast v0, Lcom/unity3d/ads/core/data/datasource/DynamicDeviceInfoDataSource;

    return-object v0
.end method

.method private final provideExecuteAdViewerRequest(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/services/core/network/core/HttpClient;)Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;
    .locals 1

    .line 1068
    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidExecuteAdViewerRequest;

    invoke-interface {p1}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidExecuteAdViewerRequest;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/services/core/network/core/HttpClient;)V

    check-cast v0, Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;

    return-object v0
.end method

.method private final provideFetchGLInfoDataMigration(Lcom/unity3d/ads/core/domain/GetOpenGLRendererInfo;)Landroidx/datastore/core/DataMigration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/GetOpenGLRendererInfo;",
            ")",
            "Landroidx/datastore/core/DataMigration<",
            "LByteStringStoreOuterClass$ByteStringStore;",
            ">;"
        }
    .end annotation

    .line 971
    new-instance v0, Lcom/unity3d/ads/core/data/datasource/FetchGLInfoDataMigration;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/data/datasource/FetchGLInfoDataMigration;-><init>(Lcom/unity3d/ads/core/domain/GetOpenGLRendererInfo;)V

    check-cast v0, Landroidx/datastore/core/DataMigration;

    return-object v0
.end method

.method private final provideGatewayCacheDataStore(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;)Landroidx/datastore/core/DataStore;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/unity3d/services/core/domain/ISDKDispatchers;",
            ")",
            "Landroidx/datastore/core/DataStore<",
            "LByteStringStoreOuterClass$ByteStringStore;",
            ">;"
        }
    .end annotation

    .line 873
    const-string v0, "gateway_cache.pb"

    invoke-direct {p0, p1, p2, v0}, Lcom/unity3d/services/core/di/ServiceProvider;->provideByteStringDataStore(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Ljava/lang/String;)Landroidx/datastore/core/DataStore;

    move-result-object p1

    return-object p1
.end method

.method private final provideGatewayClient(Lcom/unity3d/services/core/network/core/HttpClient;Lcom/unity3d/ads/core/domain/HandleGatewayUniversalResponse;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)Lcom/unity3d/ads/gatewayclient/GatewayClient;
    .locals 1

    .line 674
    new-instance v0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;

    invoke-direct {v0, p1, p2, p3}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;-><init>(Lcom/unity3d/services/core/network/core/HttpClient;Lcom/unity3d/ads/core/domain/HandleGatewayUniversalResponse;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)V

    check-cast v0, Lcom/unity3d/ads/gatewayclient/GatewayClient;

    return-object v0
.end method

.method private final provideGetAdDataRefreshRequest(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;)Lcom/unity3d/ads/core/domain/GetAdDataRefreshRequest;
    .locals 1

    .line 798
    new-instance v0, Lcom/unity3d/ads/core/domain/GetAndroidAdDataRefreshRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/unity3d/ads/core/domain/GetAndroidAdDataRefreshRequest;-><init>(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;)V

    check-cast v0, Lcom/unity3d/ads/core/domain/GetAdDataRefreshRequest;

    return-object v0
.end method

.method private final provideGetAdRequest(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;)Lcom/unity3d/ads/core/domain/GetAdRequest;
    .locals 1

    .line 784
    new-instance v0, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest;-><init>(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;)V

    check-cast v0, Lcom/unity3d/ads/core/domain/GetAdRequest;

    return-object v0
.end method

.method private final provideGetAndroidExposureUseCase(Lcom/unity3d/ads/core/domain/GetAndroidAdPlayerContext;Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;Lcom/unity3d/ads/core/domain/Refresh;Lcom/unity3d/ads/core/domain/HandleOpenUrl;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;Lcom/unity3d/ads/core/domain/SendPrivacyUpdateRequest;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;
    .locals 10

    .line 862
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;-><init>(Lcom/unity3d/ads/core/domain/GetAndroidAdPlayerContext;Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;Lcom/unity3d/ads/core/domain/Refresh;Lcom/unity3d/ads/core/domain/HandleOpenUrl;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;Lcom/unity3d/ads/core/domain/SendPrivacyUpdateRequest;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)V

    return-object v0
.end method

.method private final provideGetClientInfo(Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/MediationRepository;)Lcom/unity3d/ads/core/domain/GetClientInfo;
    .locals 1

    .line 670
    new-instance v0, Lcom/unity3d/ads/core/domain/GetAndroidClientInfo;

    invoke-direct {v0, p1, p2}, Lcom/unity3d/ads/core/domain/GetAndroidClientInfo;-><init>(Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/MediationRepository;)V

    check-cast v0, Lcom/unity3d/ads/core/domain/GetClientInfo;

    return-object v0
.end method

.method private final provideGetInitializationCompletedRequest(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;)Lcom/unity3d/ads/core/domain/GetInitializationCompletedRequest;
    .locals 1

    .line 1007
    new-instance v0, Lcom/unity3d/ads/core/domain/GetAndroidInitializationCompletedRequest;

    invoke-direct {v0, p1, p2}, Lcom/unity3d/ads/core/domain/GetAndroidInitializationCompletedRequest;-><init>(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;)V

    check-cast v0, Lcom/unity3d/ads/core/domain/GetInitializationCompletedRequest;

    return-object v0
.end method

.method private final provideGetInitializationRequest(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/domain/GetClientInfo;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/LegacyUserConsentRepository;)Lcom/unity3d/ads/core/domain/GetInitializationRequest;
    .locals 6

    .line 619
    new-instance v0, Lcom/unity3d/ads/core/domain/GetAndroidInitializationRequest;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/core/domain/GetAndroidInitializationRequest;-><init>(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/domain/GetClientInfo;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/LegacyUserConsentRepository;)V

    check-cast v0, Lcom/unity3d/ads/core/domain/GetInitializationRequest;

    return-object v0
.end method

.method private final provideGetOpenGLRendererInfo(Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/core/domain/GetOpenGLRendererInfo;
    .locals 1

    .line 975
    new-instance v0, Lcom/unity3d/ads/core/domain/GetAndroidOpenGLRendererInfo;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/domain/GetAndroidOpenGLRendererInfo;-><init>(Lcom/unity3d/ads/core/data/repository/SessionRepository;)V

    check-cast v0, Lcom/unity3d/ads/core/domain/GetOpenGLRendererInfo;

    return-object v0
.end method

.method private final provideGetSharedDataTimestamps()Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;
    .locals 1

    .line 696
    new-instance v0, Lcom/unity3d/ads/core/domain/GetAndroidSharedDataTimestamps;

    invoke-direct {v0}, Lcom/unity3d/ads/core/domain/GetAndroidSharedDataTimestamps;-><init>()V

    check-cast v0, Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;

    return-object v0
.end method

.method private final provideGetUniversalRequestForPayLoad(Lcom/unity3d/ads/core/domain/GetUniversalRequestSharedData;)Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;
    .locals 1

    .line 678
    new-instance v0, Lcom/unity3d/ads/core/domain/GetAndroidUniversalRequestForPayLoad;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/domain/GetAndroidUniversalRequestForPayLoad;-><init>(Lcom/unity3d/ads/core/domain/GetUniversalRequestSharedData;)V

    check-cast v0, Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;

    return-object v0
.end method

.method private final provideGetUniversalRequestSharedData(Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/DeveloperConsentRepository;)Lcom/unity3d/ads/core/domain/GetUniversalRequestSharedData;
    .locals 1

    .line 687
    new-instance v0, Lcom/unity3d/ads/core/domain/GetAndroidUniversalRequestSharedData;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/unity3d/ads/core/domain/GetAndroidUniversalRequestSharedData;-><init>(Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/DeveloperConsentRepository;)V

    check-cast v0, Lcom/unity3d/ads/core/domain/GetUniversalRequestSharedData;

    return-object v0
.end method

.method private final provideGetWebViewBridgeUseCase(Lcom/unity3d/services/core/domain/ISDKDispatchers;)Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;
    .locals 1

    .line 440
    new-instance v0, Lcom/unity3d/ads/core/domain/GetCommonWebViewBridgeUseCase;

    invoke-interface {p1}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/domain/GetCommonWebViewBridgeUseCase;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;)V

    check-cast v0, Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;

    return-object v0
.end method

.method private final provideGetWebViewContainerUseCase(Landroid/content/Context;Lcom/unity3d/ads/adplayer/AndroidWebViewClient;Lcom/unity3d/ads/core/domain/SendWebViewClientErrorDiagnostics;)Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;
    .locals 1

    .line 474
    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;

    invoke-direct {v0, p1, p2, p3}, Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;-><init>(Landroid/content/Context;Lcom/unity3d/ads/adplayer/AndroidWebViewClient;Lcom/unity3d/ads/core/domain/SendWebViewClientErrorDiagnostics;)V

    return-object v0
.end method

.method private final provideGlInfoDataStore(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Landroidx/datastore/core/DataMigration;)Landroidx/datastore/core/DataStore;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/unity3d/services/core/domain/ISDKDispatchers;",
            "Landroidx/datastore/core/DataMigration<",
            "LByteStringStoreOuterClass$ByteStringStore;",
            ">;)",
            "Landroidx/datastore/core/DataStore<",
            "LByteStringStoreOuterClass$ByteStringStore;",
            ">;"
        }
    .end annotation

    .line 935
    sget-object v0, Landroidx/datastore/core/DataStoreFactory;->INSTANCE:Landroidx/datastore/core/DataStoreFactory;

    .line 936
    new-instance v1, Lcom/unity3d/ads/core/data/model/ByteStringSerializer;

    invoke-direct {v1}, Lcom/unity3d/ads/core/data/model/ByteStringSerializer;-><init>()V

    .line 938
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 939
    invoke-interface {p2}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v2, 0x1

    invoke-static {p3, v2, p3}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p3

    check-cast p3, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {p2, p3}, Lkotlinx/coroutines/CoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    .line 936
    check-cast v1, Landroidx/datastore/core/Serializer;

    .line 935
    new-instance p2, Lcom/unity3d/services/core/di/ServiceProvider$provideGlInfoDataStore$1;

    invoke-direct {p2, p1}, Lcom/unity3d/services/core/di/ServiceProvider$provideGlInfoDataStore$1;-><init>(Landroid/content/Context;)V

    move-object v5, p2

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v7}, Landroidx/datastore/core/DataStoreFactory;->create$default(Landroidx/datastore/core/DataStoreFactory;Landroidx/datastore/core/Serializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/datastore/core/DataStore;

    move-result-object p1

    return-object p1
.end method

.method private final provideHandleGatewayAdResponse(Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;)Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;
    .locals 12

    .line 819
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;

    .line 823
    invoke-interface/range {p4 .. p4}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    .line 819
    invoke-direct/range {v0 .. v11}, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;-><init>(Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;)V

    check-cast v0, Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;

    return-object v0
.end method

.method private final provideHandleGatewayInitializationResponse(Lcom/unity3d/ads/core/domain/TriggerInitializationCompletedRequest;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lkotlinx/coroutines/CoroutineScope;)Lcom/unity3d/ads/core/domain/HandleGatewayInitializationResponse;
    .locals 1

    .line 640
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleAndroidGatewayInitializationResponse;

    invoke-direct {v0, p1, p2, p3}, Lcom/unity3d/ads/core/domain/HandleAndroidGatewayInitializationResponse;-><init>(Lcom/unity3d/ads/core/domain/TriggerInitializationCompletedRequest;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lkotlinx/coroutines/CoroutineScope;)V

    check-cast v0, Lcom/unity3d/ads/core/domain/HandleGatewayInitializationResponse;

    return-object v0
.end method

.method private final provideHandleGatewayUniversalResponse(Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;)Lcom/unity3d/ads/core/domain/HandleGatewayUniversalResponse;
    .locals 1

    .line 632
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleAndroidGatewayUniversalResponse;

    invoke-direct {v0, p1, p2}, Lcom/unity3d/ads/core/domain/HandleAndroidGatewayUniversalResponse;-><init>(Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;)V

    check-cast v0, Lcom/unity3d/ads/core/domain/HandleGatewayUniversalResponse;

    return-object v0
.end method

.method private final provideHttpClient(Lcom/unity3d/services/core/domain/task/ConfigFileFromLocalStorage;Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Landroid/content/Context;)Lcom/unity3d/services/core/network/core/HttpClient;
    .locals 7

    .line 532
    new-instance v0, Lcom/unity3d/services/core/di/ServiceProvider$provideHttpClient$1;

    const/4 v6, 0x0

    move-object v5, p1

    move-object v1, p2

    move-object v3, p3

    move-object v2, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/unity3d/services/core/di/ServiceProvider$provideHttpClient$1;-><init>(Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/services/core/domain/ISDKDispatchers;Landroid/content/Context;Lcom/unity3d/services/core/domain/task/ConfigFileFromLocalStorage;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {p2, v0, p1, p2}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unity3d/services/core/network/core/HttpClient;

    return-object p1
.end method

.method private final provideIdfiDataMigration(Landroid/content/Context;)Landroidx/datastore/core/DataMigration;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroidx/datastore/core/DataMigration<",
            "LByteStringStoreOuterClass$ByteStringStore;",
            ">;"
        }
    .end annotation

    .line 954
    new-instance v0, Lcom/unity3d/ads/core/data/datasource/PreservingByteStringPreferenceMigration;

    .line 958
    new-instance v1, Lcom/unity3d/ads/core/data/datasource/GetIdfiData;

    invoke-direct {v1}, Lcom/unity3d/ads/core/data/datasource/GetIdfiData;-><init>()V

    check-cast v1, Lcom/unity3d/ads/core/data/datasource/GetByteStringData;

    .line 954
    const-string v2, "unityads-installinfo"

    const-string v3, "unityads-idfi"

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/unity3d/ads/core/data/datasource/PreservingByteStringPreferenceMigration;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/data/datasource/GetByteStringData;)V

    check-cast v0, Landroidx/datastore/core/DataMigration;

    return-object v0
.end method

.method private final provideIdfiDataStore(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Landroidx/datastore/core/DataMigration;Landroidx/datastore/core/DataMigration;)Landroidx/datastore/core/DataStore;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/unity3d/services/core/domain/ISDKDispatchers;",
            "Landroidx/datastore/core/DataMigration<",
            "LByteStringStoreOuterClass$ByteStringStore;",
            ">;",
            "Landroidx/datastore/core/DataMigration<",
            "LByteStringStoreOuterClass$ByteStringStore;",
            ">;)",
            "Landroidx/datastore/core/DataStore<",
            "LByteStringStoreOuterClass$ByteStringStore;",
            ">;"
        }
    .end annotation

    .line 896
    sget-object v0, Landroidx/datastore/core/DataStoreFactory;->INSTANCE:Landroidx/datastore/core/DataStoreFactory;

    .line 897
    new-instance v1, Lcom/unity3d/ads/core/data/model/ByteStringSerializer;

    invoke-direct {v1}, Lcom/unity3d/ads/core/data/model/ByteStringSerializer;-><init>()V

    const/4 v2, 0x2

    .line 899
    new-array v2, v2, [Landroidx/datastore/core/DataMigration;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 p3, 0x1

    aput-object p4, v2, p3

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 900
    new-instance v2, Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;

    sget-object p4, Lcom/unity3d/services/core/di/ServiceProvider$provideIdfiDataStore$1;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider$provideIdfiDataStore$1;

    check-cast p4, Lkotlin/jvm/functions/Function1;

    invoke-direct {v2, p4}, Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 907
    invoke-interface {p2}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    const/4 p4, 0x0

    invoke-static {p4, p3, p4}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p3

    check-cast p3, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {p2, p3}, Lkotlinx/coroutines/CoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    .line 897
    check-cast v1, Landroidx/datastore/core/Serializer;

    .line 896
    new-instance p2, Lcom/unity3d/services/core/di/ServiceProvider$provideIdfiDataStore$2;

    invoke-direct {p2, p1}, Lcom/unity3d/services/core/di/ServiceProvider$provideIdfiDataStore$2;-><init>(Landroid/content/Context;)V

    move-object v5, p2

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/core/DataStoreFactory;->create(Landroidx/datastore/core/Serializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;)Landroidx/datastore/core/DataStore;

    move-result-object p1

    return-object p1
.end method

.method private final provideInitRequestPolicy(Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/core/domain/GetRequestPolicy;
    .locals 1

    .line 424
    new-instance v0, Lcom/unity3d/ads/core/domain/GetInitRequestPolicy;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/domain/GetInitRequestPolicy;-><init>(Lcom/unity3d/ads/core/data/repository/SessionRepository;)V

    check-cast v0, Lcom/unity3d/ads/core/domain/GetRequestPolicy;

    return-object v0
.end method

.method private final provideInitializeBoldSDK(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/GetInitializationRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/core/domain/HandleGatewayInitializationResponse;Lcom/unity3d/ads/gatewayclient/GatewayClient;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/domain/events/EventObservers;Lcom/unity3d/ads/core/domain/TriggerInitializeListener;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/manager/StorageManager;Lcom/unity3d/ads/core/data/manager/SDKPropertiesManager;)Lcom/unity3d/ads/core/domain/InitializeBoldSDK;
    .locals 14

    .line 595
    new-instance v0, Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK;

    .line 596
    invoke-interface {p1}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    .line 595
    invoke-direct/range {v0 .. v13}, Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/domain/GetInitializationRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/core/domain/HandleGatewayInitializationResponse;Lcom/unity3d/ads/gatewayclient/GatewayClient;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/domain/events/EventObservers;Lcom/unity3d/ads/core/domain/TriggerInitializeListener;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/manager/StorageManager;Lcom/unity3d/ads/core/data/manager/SDKPropertiesManager;)V

    check-cast v0, Lcom/unity3d/ads/core/domain/InitializeBoldSDK;

    return-object v0
.end method

.method private final provideJsonStorage(Lcom/unity3d/services/core/device/StorageManager$StorageType;)Lcom/unity3d/services/core/misc/JsonStorage;
    .locals 1

    .line 574
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/services/core/device/StorageManager;->init(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    invoke-static {p1}, Lcom/unity3d/services/core/device/StorageManager;->getStorage(Lcom/unity3d/services/core/device/StorageManager$StorageType;)Lcom/unity3d/services/core/device/Storage;

    move-result-object p1

    const-string v0, "getStorage(storageType)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/unity3d/services/core/misc/JsonStorage;

    return-object p1

    .line 574
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "StorageManager failed to initialize"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final provideLegacyLoadUseCase(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/Load;Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;
    .locals 6

    .line 1089
    new-instance v0, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;

    invoke-interface {p1}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getMain()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    move-object v2, p2

    move-object v5, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/domain/Load;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/AdRepository;)V

    return-object v0
.end method

.method private final provideLegacyShowUseCase(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/Show;Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/core/domain/LegacyShowUseCase;
    .locals 7

    .line 1079
    new-instance v0, Lcom/unity3d/ads/core/domain/LegacyShowUseCase;

    invoke-interface {p1}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getMain()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/unity3d/ads/core/domain/LegacyShowUseCase;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/domain/Show;Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;Lcom/unity3d/ads/core/data/repository/SessionRepository;)V

    return-object v0
.end method

.method private final provideLifeCycleCache()Lcom/unity3d/services/core/lifecycle/LifecycleCache;
    .locals 2

    .line 741
    invoke-static {}, Lcom/unity3d/services/core/lifecycle/CachedLifecycle;->getLifecycleListener()Lcom/unity3d/services/core/lifecycle/LifecycleCache;

    move-result-object v0

    const-string v1, "getLifecycleListener()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final provideLoad(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/GetAdRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/gatewayclient/GatewayClient;Lcom/unity3d/ads/core/data/repository/AdRepository;)Lcom/unity3d/ads/core/domain/Load;
    .locals 8

    .line 753
    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidLoad;

    .line 754
    invoke-interface {p1}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 753
    invoke-direct/range {v0 .. v7}, Lcom/unity3d/ads/core/domain/AndroidLoad;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/domain/GetAdRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/gatewayclient/GatewayClient;Lcom/unity3d/ads/core/data/repository/AdRepository;)V

    check-cast v0, Lcom/unity3d/ads/core/domain/Load;

    return-object v0
.end method

.method private final provideMediationDataSource(Lcom/unity3d/services/core/misc/JsonStorage;)Lcom/unity3d/ads/core/data/datasource/MediationDataSource;
    .locals 1

    .line 416
    new-instance v0, Lcom/unity3d/ads/core/data/datasource/AndroidMediationDataSource;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/data/datasource/AndroidMediationDataSource;-><init>(Lcom/unity3d/services/core/misc/JsonStorage;)V

    check-cast v0, Lcom/unity3d/ads/core/data/datasource/MediationDataSource;

    return-object v0
.end method

.method private final provideMediationRepository(Lcom/unity3d/ads/core/data/datasource/MediationDataSource;)Lcom/unity3d/ads/core/data/repository/MediationRepository;
    .locals 1

    .line 420
    new-instance v0, Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository;-><init>(Lcom/unity3d/ads/core/data/datasource/MediationDataSource;)V

    check-cast v0, Lcom/unity3d/ads/core/data/repository/MediationRepository;

    return-object v0
.end method

.method private final provideOperativeEventObserver(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/data/repository/OperativeEventRepository;Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;Lcom/unity3d/ads/core/domain/work/BackgroundWorker;)Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;
    .locals 6

    .line 445
    new-instance v0, Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;

    .line 447
    invoke-interface {p2}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 445
    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;-><init>(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/data/repository/OperativeEventRepository;Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;Lcom/unity3d/ads/core/domain/work/BackgroundWorker;)V

    return-object v0
.end method

.method private final provideOperativeEventRequestPolicy(Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/core/domain/GetRequestPolicy;
    .locals 1

    .line 436
    new-instance v0, Lcom/unity3d/ads/core/domain/GetOperativeEventRequestPolicy;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/domain/GetOperativeEventRequestPolicy;-><init>(Lcom/unity3d/ads/core/data/repository/SessionRepository;)V

    check-cast v0, Lcom/unity3d/ads/core/domain/GetRequestPolicy;

    return-object v0
.end method

.method private final provideOtherRequestPolicy(Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/core/domain/GetRequestPolicy;
    .locals 1

    .line 428
    new-instance v0, Lcom/unity3d/ads/core/domain/GetOtherRequestPolicy;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/domain/GetOtherRequestPolicy;-><init>(Lcom/unity3d/ads/core/data/repository/SessionRepository;)V

    check-cast v0, Lcom/unity3d/ads/core/domain/GetRequestPolicy;

    return-object v0
.end method

.method private final providePrivacyDeviceInfoDataSource(Landroid/content/Context;)Lcom/unity3d/ads/core/data/datasource/PrivacyDeviceInfoDataSource;
    .locals 1

    .line 737
    new-instance v0, Lcom/unity3d/ads/core/data/datasource/AndroidPrivacyDeviceInfoDataSource;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/data/datasource/AndroidPrivacyDeviceInfoDataSource;-><init>(Landroid/content/Context;)V

    check-cast v0, Lcom/unity3d/ads/core/data/datasource/PrivacyDeviceInfoDataSource;

    return-object v0
.end method

.method private final providePrivacyFsmDataStore(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;)Landroidx/datastore/core/DataStore;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/unity3d/services/core/domain/ISDKDispatchers;",
            ")",
            "Landroidx/datastore/core/DataStore<",
            "LByteStringStoreOuterClass$ByteStringStore;",
            ">;"
        }
    .end annotation

    .line 887
    const-string v0, "privacy_fsm.pb"

    invoke-direct {p0, p1, p2, v0}, Lcom/unity3d/services/core/di/ServiceProvider;->provideByteStringDataStore(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Ljava/lang/String;)Landroidx/datastore/core/DataStore;

    move-result-object p1

    return-object p1
.end method

.method private final provideRefresh(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/GetAdDataRefreshRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/gatewayclient/GatewayClient;)Lcom/unity3d/ads/core/domain/Refresh;
    .locals 1

    .line 770
    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidRefresh;

    .line 771
    invoke-interface {p1}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    .line 770
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/unity3d/ads/core/domain/AndroidRefresh;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/domain/GetAdDataRefreshRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/gatewayclient/GatewayClient;)V

    check-cast v0, Lcom/unity3d/ads/core/domain/Refresh;

    return-object v0
.end method

.method private final provideSDKDispatchers()Lcom/unity3d/services/core/domain/ISDKDispatchers;
    .locals 1

    .line 493
    new-instance v0, Lcom/unity3d/services/core/domain/SDKDispatchers;

    invoke-direct {v0}, Lcom/unity3d/services/core/domain/SDKDispatchers;-><init>()V

    check-cast v0, Lcom/unity3d/services/core/domain/ISDKDispatchers;

    return-object v0
.end method

.method private final provideSDKErrorHandler(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;)Lkotlinx/coroutines/CoroutineExceptionHandler;
    .locals 1

    .line 505
    new-instance v0, Lcom/unity3d/services/SDKErrorHandler;

    invoke-interface {p1}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/unity3d/services/SDKErrorHandler;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;)V

    check-cast v0, Lkotlinx/coroutines/CoroutineExceptionHandler;

    return-object v0
.end method

.method private final provideSDKMetricSender()Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;
    .locals 2

    .line 520
    invoke-static {}, Lcom/unity3d/services/core/request/metrics/SDKMetrics;->getInstance()Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;

    move-result-object v0

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final provideSDKScope(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lkotlinx/coroutines/CoroutineExceptionHandler;)Lkotlinx/coroutines/CoroutineScope;
    .locals 2

    .line 515
    invoke-interface {p1}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/CoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {p1, p2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    return-object p1
.end method

.method private final provideSendWebViewClientErrorDiagnostics(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)Lcom/unity3d/ads/core/domain/SendWebViewClientErrorDiagnostics;
    .locals 1

    .line 481
    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics;

    invoke-interface {p1}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)V

    check-cast v0, Lcom/unity3d/ads/core/domain/SendWebViewClientErrorDiagnostics;

    return-object v0
.end method

.method private final provideSessionRepository(Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;)Lcom/unity3d/ads/core/data/repository/SessionRepository;
    .locals 1

    .line 661
    new-instance v0, Lcom/unity3d/ads/core/data/repository/AndroidSessionRepository;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/unity3d/ads/core/data/repository/AndroidSessionRepository;-><init>(Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;)V

    check-cast v0, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    return-object v0
.end method

.method private final provideShow(Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/configuration/GameServerIdReader;)Lcom/unity3d/ads/core/domain/Show;
    .locals 1

    .line 848
    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidShow;

    invoke-direct {v0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidShow;-><init>(Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/configuration/GameServerIdReader;)V

    check-cast v0, Lcom/unity3d/ads/core/domain/Show;

    return-object v0
.end method

.method private final provideStaticDeviceInfoDataSource(Landroid/content/Context;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/AnalyticsDataSource;)Lcom/unity3d/ads/core/data/datasource/StaticDeviceInfoDataSource;
    .locals 6

    .line 718
    new-instance v0, Lcom/unity3d/ads/core/data/datasource/AndroidStaticDeviceInfoDataSource;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/core/data/datasource/AndroidStaticDeviceInfoDataSource;-><init>(Landroid/content/Context;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/AnalyticsDataSource;)V

    check-cast v0, Lcom/unity3d/ads/core/data/datasource/StaticDeviceInfoDataSource;

    return-object v0
.end method

.method private final provideTriggerInitializationCompletedRequest(Lcom/unity3d/ads/core/domain/GetInitializationCompletedRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/gatewayclient/GatewayClient;)Lcom/unity3d/ads/core/domain/TriggerInitializationCompletedRequest;
    .locals 1

    .line 1018
    new-instance v0, Lcom/unity3d/ads/core/domain/TriggerAndroidInitializationCompletedRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/unity3d/ads/core/domain/TriggerAndroidInitializationCompletedRequest;-><init>(Lcom/unity3d/ads/core/domain/GetInitializationCompletedRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/gatewayclient/GatewayClient;)V

    check-cast v0, Lcom/unity3d/ads/core/domain/TriggerInitializationCompletedRequest;

    return-object v0
.end method

.method private final provideTriggerInitializeListener(Lcom/unity3d/services/core/domain/ISDKDispatchers;)Lcom/unity3d/ads/core/domain/TriggerInitializeListener;
    .locals 1

    .line 466
    new-instance v0, Lcom/unity3d/ads/core/domain/TriggerInitializeListener;

    invoke-interface {p1}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getMain()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/domain/TriggerInitializeListener;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;)V

    return-object v0
.end method

.method private final provideUniversalRequestDataSource(Landroidx/datastore/core/DataStore;)Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/core/DataStore<",
            "LUniversalRequestStoreOuterClass$UniversalRequestStore;",
            ">;)",
            "Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;"
        }
    .end annotation

    .line 648
    new-instance v0, Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;-><init>(Landroidx/datastore/core/DataStore;)V

    return-object v0
.end method

.method private final provideUniversalRequestDataStore(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;)Landroidx/datastore/core/DataStore;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/unity3d/services/core/domain/ISDKDispatchers;",
            ")",
            "Landroidx/datastore/core/DataStore<",
            "LUniversalRequestStoreOuterClass$UniversalRequestStore;",
            ">;"
        }
    .end annotation

    .line 995
    sget-object v0, Landroidx/datastore/core/DataStoreFactory;->INSTANCE:Landroidx/datastore/core/DataStoreFactory;

    .line 996
    new-instance v1, Lcom/unity3d/ads/core/data/model/UniversalRequestStoreSerializer;

    invoke-direct {v1}, Lcom/unity3d/ads/core/data/model/UniversalRequestStoreSerializer;-><init>()V

    .line 999
    invoke-interface {p2}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v3, v2}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {p2, v2}, Lkotlinx/coroutines/CoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    .line 996
    check-cast v1, Landroidx/datastore/core/Serializer;

    .line 995
    new-instance p2, Lcom/unity3d/services/core/di/ServiceProvider$provideUniversalRequestDataStore$1;

    invoke-direct {p2, p1}, Lcom/unity3d/services/core/di/ServiceProvider$provideUniversalRequestDataStore$1;-><init>(Landroid/content/Context;)V

    move-object v5, p2

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v7}, Landroidx/datastore/core/DataStoreFactory;->create$default(Landroidx/datastore/core/DataStoreFactory;Landroidx/datastore/core/Serializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/datastore/core/DataStore;

    move-result-object p1

    return-object p1
.end method

.method private final provideUserConsentDataStore(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;)Landroidx/datastore/core/DataStore;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/unity3d/services/core/domain/ISDKDispatchers;",
            ")",
            "Landroidx/datastore/core/DataStore<",
            "LByteStringStoreOuterClass$ByteStringStore;",
            ">;"
        }
    .end annotation

    .line 880
    const-string v0, "privacy.pb"

    invoke-direct {p0, p1, p2, v0}, Lcom/unity3d/services/core/di/ServiceProvider;->provideByteStringDataStore(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Ljava/lang/String;)Landroidx/datastore/core/DataStore;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;
    .locals 1

    .line 487
    sget-object v0, Lcom/unity3d/services/core/di/ServiceProvider;->serviceRegistry:Lcom/unity3d/services/core/di/IServicesRegistry;

    return-object v0
.end method

.method public initialize()Lcom/unity3d/services/core/di/IServicesRegistry;
    .locals 1

    .line 170
    sget-object v0, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider$initialize$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Lcom/unity3d/services/core/di/ServicesRegistryKt;->registry(Lkotlin/jvm/functions/Function1;)Lcom/unity3d/services/core/di/ServicesRegistry;

    move-result-object v0

    check-cast v0, Lcom/unity3d/services/core/di/IServicesRegistry;

    return-object v0
.end method
