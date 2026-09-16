.class Lorg/jacoco/core/internal/flow/ClassProbesAdapter$2;
.super Lorg/jacoco/core/internal/flow/MethodSanitizer;
.source "ClassProbesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jacoco/core/internal/flow/ClassProbesAdapter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/MethodVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jacoco/core/internal/flow/ClassProbesAdapter;

.field final synthetic val$methodProbes:Lorg/jacoco/core/internal/flow/MethodProbesVisitor;


# direct methods
.method constructor <init>(Lorg/jacoco/core/internal/flow/ClassProbesAdapter;Lorg/objectweb/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/jacoco/core/internal/flow/MethodProbesVisitor;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lorg/jacoco/core/internal/flow/ClassProbesAdapter$2;->this$0:Lorg/jacoco/core/internal/flow/ClassProbesAdapter;

    iput-object p8, p0, Lorg/jacoco/core/internal/flow/ClassProbesAdapter$2;->val$methodProbes:Lorg/jacoco/core/internal/flow/MethodProbesVisitor;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lorg/jacoco/core/internal/flow/MethodSanitizer;-><init>(Lorg/objectweb/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public visitEnd()V
    .locals 6

    .line 80
    invoke-super {p0}, Lorg/jacoco/core/internal/flow/MethodSanitizer;->visitEnd()V

    .line 81
    invoke-static {p0}, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->markLabels(Lorg/objectweb/asm/tree/MethodNode;)V

    .line 82
    new-instance v5, Lorg/jacoco/core/internal/flow/MethodProbesAdapter;

    iget-object v0, p0, Lorg/jacoco/core/internal/flow/ClassProbesAdapter$2;->val$methodProbes:Lorg/jacoco/core/internal/flow/MethodProbesVisitor;

    iget-object v1, p0, Lorg/jacoco/core/internal/flow/ClassProbesAdapter$2;->this$0:Lorg/jacoco/core/internal/flow/ClassProbesAdapter;

    invoke-direct {v5, v0, v1}, Lorg/jacoco/core/internal/flow/MethodProbesAdapter;-><init>(Lorg/jacoco/core/internal/flow/MethodProbesVisitor;Lorg/jacoco/core/internal/flow/IProbeIdGenerator;)V

    .line 84
    iget-object v0, p0, Lorg/jacoco/core/internal/flow/ClassProbesAdapter$2;->this$0:Lorg/jacoco/core/internal/flow/ClassProbesAdapter;

    invoke-static {v0}, Lorg/jacoco/core/internal/flow/ClassProbesAdapter;->access$000(Lorg/jacoco/core/internal/flow/ClassProbesAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Lorg/objectweb/asm/commons/AnalyzerAdapter;

    iget-object v1, p0, Lorg/jacoco/core/internal/flow/ClassProbesAdapter$2;->this$0:Lorg/jacoco/core/internal/flow/ClassProbesAdapter;

    invoke-static {v1}, Lorg/jacoco/core/internal/flow/ClassProbesAdapter;->access$100(Lorg/jacoco/core/internal/flow/ClassProbesAdapter;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/jacoco/core/internal/flow/ClassProbesAdapter$2;->access:I

    iget-object v3, p0, Lorg/jacoco/core/internal/flow/ClassProbesAdapter$2;->name:Ljava/lang/String;

    iget-object v4, p0, Lorg/jacoco/core/internal/flow/ClassProbesAdapter$2;->desc:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/commons/AnalyzerAdapter;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/MethodVisitor;)V

    .line 88
    invoke-virtual {v5, v0}, Lorg/jacoco/core/internal/flow/MethodProbesAdapter;->setAnalyzer(Lorg/objectweb/asm/commons/AnalyzerAdapter;)V

    .line 89
    iget-object v1, p0, Lorg/jacoco/core/internal/flow/ClassProbesAdapter$2;->val$methodProbes:Lorg/jacoco/core/internal/flow/MethodProbesVisitor;

    invoke-virtual {v1, p0, v0}, Lorg/jacoco/core/internal/flow/MethodProbesVisitor;->accept(Lorg/objectweb/asm/tree/MethodNode;Lorg/objectweb/asm/MethodVisitor;)V

    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lorg/jacoco/core/internal/flow/ClassProbesAdapter$2;->val$methodProbes:Lorg/jacoco/core/internal/flow/MethodProbesVisitor;

    invoke-virtual {v0, p0, v5}, Lorg/jacoco/core/internal/flow/MethodProbesVisitor;->accept(Lorg/objectweb/asm/tree/MethodNode;Lorg/objectweb/asm/MethodVisitor;)V

    return-void
.end method
