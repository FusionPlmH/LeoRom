.class Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$6;
.super Ljava/lang/Object;
.source "MobileDataOnlySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->loadAppList()V
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

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$6;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$6;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->access$500(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$6;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->access$600(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$6;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->access$700(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$6;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->access$800(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$6;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->access$900(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$6;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->access$1000(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Landroid/support/v7/widget/AppCompatSpinner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$6;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->access$1000(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Landroid/support/v7/widget/AppCompatSpinner;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$6;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->access$000(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatSpinner;->setSelection(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$6;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->access$1000(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Landroid/support/v7/widget/AppCompatSpinner;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$6;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->access$1100(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$6;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->access$900(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$6;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->access$900(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$6;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->access$800(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$6;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->access$400(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$6;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->access$700(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->setList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$6;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->access$400(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method
