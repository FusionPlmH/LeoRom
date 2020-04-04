.class Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$4;
.super Ljava/lang/Object;
.source "MobileDataOnlySettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$4;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$4;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->access$000(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)I

    move-result v0

    if-ne v0, p3, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$4;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-virtual {v0, p3}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->setSelectedFilter(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$4;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->access$100(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$4;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x1beb

    int-to-long v2, p3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
