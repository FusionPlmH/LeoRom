.class public final synthetic Lcom/samsung/android/bio/face/-$$Lambda$SemBioFaceManager$3$9_FpAFrDq16HUzdeFa_Nu1d0gqE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/bio/face/SemBioFaceManager$3;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/bio/face/SemBioFaceManager$3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/bio/face/-$$Lambda$SemBioFaceManager$3$9_FpAFrDq16HUzdeFa_Nu1d0gqE;->f$0:Lcom/samsung/android/bio/face/SemBioFaceManager$3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/-$$Lambda$SemBioFaceManager$3$9_FpAFrDq16HUzdeFa_Nu1d0gqE;->f$0:Lcom/samsung/android/bio/face/SemBioFaceManager$3;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->lambda$onAuthenticationFailed$2(Lcom/samsung/android/bio/face/SemBioFaceManager$3;)V

    return-void
.end method
