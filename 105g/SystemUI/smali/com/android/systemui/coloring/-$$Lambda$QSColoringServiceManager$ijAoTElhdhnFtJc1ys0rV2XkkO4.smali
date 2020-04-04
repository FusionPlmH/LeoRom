.class public final synthetic Lcom/android/systemui/coloring/-$$Lambda$QSColoringServiceManager$ijAoTElhdhnFtJc1ys0rV2XkkO4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/coloring/QSColoringServiceManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/coloring/QSColoringServiceManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/coloring/-$$Lambda$QSColoringServiceManager$ijAoTElhdhnFtJc1ys0rV2XkkO4;->f$0:Lcom/android/systemui/coloring/QSColoringServiceManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/coloring/-$$Lambda$QSColoringServiceManager$ijAoTElhdhnFtJc1ys0rV2XkkO4;->f$0:Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->lambda$refreshAllQSColoringFunctions$0(Lcom/android/systemui/coloring/QSColoringServiceManager;)V

    return-void
.end method
