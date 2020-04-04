.class Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;
.super Ljava/lang/Object;
.source "SemDatePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChangeCurrentByOneFromLongPressCommand"
.end annotation


# instance fields
.field private mIncrement:Z

.field final synthetic this$0:Lcom/samsung/android/widget/SemDatePicker;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemDatePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$5200(Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V

    return-void
.end method

.method private setStep(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$5300(Lcom/samsung/android/widget/SemDatePicker;)Lcom/android/internal/widget/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePicker;->access$900(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$5300(Lcom/samsung/android/widget/SemDatePicker;)Lcom/android/internal/widget/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePicker;->access$900(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/widget/SemDatePicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
