.class Lcom/android/systemui/fusionleo/AnalogClock$1;
.super Landroid/database/ContentObserver;
.source "AnalogClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fusionleo/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fusionleo/AnalogClock;


# direct methods
.method constructor <init>(Lcom/android/systemui/fusionleo/AnalogClock;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fusionleo/AnalogClock$1;->this$0:Lcom/android/systemui/fusionleo/AnalogClock;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fusionleo/AnalogClock$1;->this$0:Lcom/android/systemui/fusionleo/AnalogClock;

    invoke-virtual {v0}, Lcom/android/systemui/fusionleo/AnalogClock;->updateAnalogClock()V

    iget-object v0, p0, Lcom/android/systemui/fusionleo/AnalogClock$1;->this$0:Lcom/android/systemui/fusionleo/AnalogClock;

    invoke-static {v0}, Lcom/android/systemui/fusionleo/AnalogClock;->access$000(Lcom/android/systemui/fusionleo/AnalogClock;)V

    iget-object v0, p0, Lcom/android/systemui/fusionleo/AnalogClock$1;->this$0:Lcom/android/systemui/fusionleo/AnalogClock;

    invoke-virtual {v0}, Lcom/android/systemui/fusionleo/AnalogClock;->invalidate()V

    return-void
.end method
