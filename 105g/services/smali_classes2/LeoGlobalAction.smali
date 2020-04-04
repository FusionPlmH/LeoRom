.class public Lcom/fusionleo/LeoX/server/LeoGlobalAction;
.super Ljava/lang/Object;
.source "LeoGlobalAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
Lcom/fusionleo/LeoX/server/LeoGlobalAction$OnStartTetheringCallback;,
        Lcom/fusionleo/LeoX/server/LeoGlobalAction$LeoAction;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;

.field static mActionString:Lcom/fusionleo/LeoX/server/LeoConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->Config:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-class v0, Lcom/fusionleo/LeoX/server/LeoGlobalAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ClearMemory(Landroid/content/Context;)V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->getAvailMemory(Landroid/content/Context;)J

    move-result-wide v4

    sget-object v6, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-----------before memory info : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    const/4 v8, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningAppProcessInfo;

    sget-object v10, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "process name : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v10, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "importance : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "a2lsbGVyX3doaXRlX2xpc3Q="

    invoke-static {v12}, Lcom/fusionleo/LeoX/server/LeoConfig;->rt1001foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/fusionleo/LeoX/server/LeoConfig;->getLeoString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    const-string v12, "\\|"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v13, v12

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_0

    aget-object v15, v12, v14

    invoke-virtual {v10, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_0
    iget-object v12, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v7

    iget v13, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v14, 0xc8

    if-le v13, v14, :cond_2

    invoke-virtual {v10, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    iget-object v13, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v14, 0x0

    :goto_2
    array-length v15, v13

    if-ge v14, v15, :cond_1

    sget-object v15, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v2

    const-string v2, "It will be killed, package name : "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v13, v14

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v2, v13, v14

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, v16

    const/4 v7, 0x0

    goto :goto_2

    :cond_1
    move-object/from16 v16, v2

    goto :goto_3

    :cond_2
    move-object/from16 v16, v2

    :goto_3
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, v16

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_3
    move-object/from16 v16, v2

    goto :goto_4

    :cond_4
    move-object/from16 v16, v2

    :goto_4
    invoke-static/range {p0 .. p0}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->getAvailMemory(Landroid/content/Context;)J

    move-result-wide v7

    sget-object v2, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "----------- after memory info : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/fusionleo/LeoX/server/LeoConfig;->PACKAGE_SYSTEMUI:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/fusionleo/LeoX/server/LeoConfig;->getPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "clear_no"

    invoke-static {v0, v10}, Lcom/fusionleo/LeoX/server/LeoConfig;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "clear_yes"

    invoke-static {v0, v10}, Lcom/fusionleo/LeoX/server/LeoConfig;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v10, v7, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "M"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    if-eqz v2, :cond_5

    move-object v10, v2

    goto :goto_5

    :cond_5
    move-object v10, v0

    :goto_5
    const/4 v11, 0x0

    invoke-static {v10, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static KillRecentAppsAll(Landroid/content/Context;)V
    .locals 13

    const/4 v0, 0x0

    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Lcom/fusionleo/LeoX/server/LeoConfig;->setKillWhiteList()[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_2

    aget-object v11, v7, v10

    if-eqz v11, :cond_1

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v6, :cond_5

    const-string v2, "systemui"

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_4

    :cond_3
    :try_start_0
    iget v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-interface {v5, v2}, Landroid/app/IActivityManager;->removeTask(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2
    sget-object v2, Lcom/fusionleo/LeoX/server/LeoConfig;->PACKAGE_SYSTEMUI:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/fusionleo/LeoX/server/LeoConfig;->getPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "kill_force"

    invoke-static {p0, v8}, Lcom/fusionleo/LeoX/server/LeoConfig;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, p0}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->getApplicationName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_4

    move-object v8, v2

    goto :goto_3

    :cond_4
    move-object v8, p0

    :goto_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_6

    :cond_5
    :goto_4
    sget-object v2, Lcom/fusionleo/LeoX/server/LeoConfig;->PACKAGE_SYSTEMUI:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/fusionleo/LeoX/server/LeoConfig;->getPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, p0}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->getApplicationName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "kill_force_whitelist"

    invoke-static {p0, v10}, Lcom/fusionleo/LeoX/server/LeoConfig;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_6

    move-object v8, v2

    goto :goto_5

    :cond_6
    move-object v8, p0

    :goto_5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    return-void

    :cond_7
    :goto_6
    return-void
.end method

.method public static LeoComponetURL(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    sget-object v3, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->mActionString:Lcom/fusionleo/LeoX/server/LeoConfig;

    const-string v3, "activity_no"

    invoke-static {p0, v3}, Lcom/fusionleo/LeoX/server/LeoConfig;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static NextTrack()V
    .locals 22

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget v17, v0, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v15

    new-instance v20, Landroid/view/KeyEvent;

    const/16 v10, 0x57

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const v16, 0x10000008

    const/16 v21, 0x101

    move-object/from16 v4, v20

    move-wide/from16 v5, v18

    move-wide/from16 v7, v18

    move/from16 v9, v17

    move-object v2, v15

    move/from16 v15, v16

    move/from16 v16, v21

    invoke-direct/range {v4 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public static PreviousPiece()V
    .locals 22

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget v17, v0, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v15

    new-instance v20, Landroid/view/KeyEvent;

    const/16 v10, 0x58

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const v16, 0x10000008

    const/16 v21, 0x101

    move-object/from16 v4, v20

    move-wide/from16 v5, v18

    move-wide/from16 v7, v18

    move/from16 v9, v17

    move-object v2, v15

    move/from16 v15, v16

    move/from16 v16, v21

    invoke-direct/range {v4 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public static WeChatScan(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/fusionleo/LeoX/server/LeoGlobalAction$LeoAction;->access$500(Landroid/content/Context;)V

    return-void
.end method

.method static getAvailMemory(Landroid/content/Context;)J
    .locals 8

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    sget-object v2, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u53ef\u7528\u5185\u5b58---->>>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v6, 0x100000

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    div-long/2addr v2, v6

    return-wide v2
.end method

.method public static getIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    if-eqz p0, :cond_1

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    :goto_0
    return-object v0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getRecentKeyEvent()V
    .locals 23

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget v17, v0, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v15

    new-instance v14, Landroid/view/KeyEvent;

    const/16 v10, 0xbb

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/16 v16, 0x0

    const v20, 0x10000008

    const/16 v21, 0x101

    move-object v4, v14

    move-wide/from16 v5, v18

    move-wide/from16 v7, v18

    move/from16 v9, v17

    move-object v2, v14

    move/from16 v14, v16

    move-object/from16 v22, v15

    move/from16 v15, v20

    move/from16 v16, v21

    invoke-direct/range {v4 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v4, v22

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public static isOutdoorModel(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_outdoor_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-nez v0, :cond_0

    sget-object v1, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->mActionString:Lcom/fusionleo/LeoX/server/LeoConfig;

    const-string v1, "outdoor_mode_no"

    invoke-static {p0, v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    sget-object v1, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->mActionString:Lcom/fusionleo/LeoX/server/LeoConfig;

    const-string v1, "outdoor_mode_yes"

    invoke-static {p0, v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$triggerVirtualKeypress$0(Landroid/hardware/input/InputManager;Landroid/view/KeyEvent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method

.method static synthetic lambda$triggerVirtualKeypress$1(Landroid/hardware/input/InputManager;Landroid/view/KeyEvent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method

.method static launchActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_apps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_activity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "NONE"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_2

    const/high16 v4, 0x14000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    sget-object v4, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to launch activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public static launchBixbyVoice(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.bixby.agent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static launchShortcut(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/high16 v0, 0x14000000

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to launch activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static openCamera(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static playPause()V
    .locals 22

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget v17, v0, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v15

    new-instance v20, Landroid/view/KeyEvent;

    const/16 v10, 0x55

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const v16, 0x10000008

    const/16 v21, 0x101

    move-object/from16 v4, v20

    move-wide/from16 v5, v18

    move-wide/from16 v7, v18

    move/from16 v9, v17

    move-object v2, v15

    move/from16 v15, v16

    move/from16 v16, v21

    invoke-direct/range {v4 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public static screenOff(Landroid/content/Context;)V
    .locals 3

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    return-void
.end method

.method public static startAppsActivity(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_short"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_1

    invoke-static {v0}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {p0, v1}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->launchShortcut(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->launchActivity(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static toggleAirplane(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    :goto_1
    invoke-static {v5, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "state"

    if-nez v1, :cond_2

    const/4 v0, 0x1

    sget-object v4, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->mActionString:Lcom/fusionleo/LeoX/server/LeoConfig;

    const-string v4, "airplane_mode_yes"

    invoke-static {p0, v4}, Lcom/fusionleo/LeoX/server/LeoConfig;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    sget-object v4, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->mActionString:Lcom/fusionleo/LeoX/server/LeoConfig;

    const-string v4, "airplane_mode_no"

    invoke-static {p0, v4}, Lcom/fusionleo/LeoX/server/LeoConfig;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


.method public static toggleExpandedDesktop(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v2, v1

    :cond_0
    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "immersive.full=*"

    :cond_1
    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p0}, Lcom/android/server/policy/PolicyControl;->reloadFromSetting(Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method public static toggleFlashlight(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/fusionleo/LeoX/server/LeoGlobalAction$LeoAction;->access$200(Landroid/content/Context;)V

    return-void
.end method

.method public static toggleFloatingModel(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prefe_name"

    invoke-static {p0, v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cXNfZmxvYXRiYWxsX2VuYWJsZWQ="

    invoke-static {v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->rt1001foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-nez v1, :cond_0

    sget-object v2, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->mActionString:Lcom/fusionleo/LeoX/server/LeoConfig;

    const-string v2, "ball_mode_no"

    invoke-static {p0, v2}, Lcom/fusionleo/LeoX/server/LeoConfig;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    sget-object v2, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->mActionString:Lcom/fusionleo/LeoX/server/LeoConfig;

    const-string v2, "ball_mode_yes"

    invoke-static {p0, v2}, Lcom/fusionleo/LeoX/server/LeoConfig;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static toggleLastApp(Landroid/content/Context;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    const-string v4, "com.android.launcher"

    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_0

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v7, "android"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :cond_0
    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    :goto_0
    if-nez v0, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_2

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    sget-object v8, Lcom/fusionleo/LeoX/server/LeoConfig;->PACKAGE_SYSTEMUI:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v8, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    :cond_1
    nop

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    const/4 v7, 0x2

    invoke-virtual {v3, v0, v7}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    :cond_3
    return-void
.end method

.method public static toggleMipopModel(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prefe_name"

    invoke-static {p0, v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cXNfbWluaXBvcF9lbmFibGVk"

    invoke-static {v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->rt1001foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-nez v1, :cond_0

    sget-object v2, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->mActionString:Lcom/fusionleo/LeoX/server/LeoConfig;

    const-string v2, "mipop_mode_no"

    invoke-static {p0, v2}, Lcom/fusionleo/LeoX/server/LeoConfig;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    sget-object v2, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->mActionString:Lcom/fusionleo/LeoX/server/LeoConfig;

    const-string v2, "mipop_mode_yes"

    invoke-static {p0, v2}, Lcom/fusionleo/LeoX/server/LeoConfig;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static toggleMobile(Landroid/content/Context;)V
    .locals 3

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V
    

   const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->getLeoMobilemode(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V
   const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->getLeoMobilemode(Landroid/content/Context;I)V
    :goto_0
    return-void
.end method

.method public static toggleNotificationPanel()V
    .locals 0

    invoke-static {}, Lcom/fusionleo/LeoX/server/LeoGlobalAction$LeoAction;->access$100()V

    return-void
.end method

.method public static toggleRingerModes(Landroid/content/Context;)V
    .locals 4

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    sget-object v2, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->mActionString:Lcom/fusionleo/LeoX/server/LeoConfig;

    const-string v2, "ringer_modes_vibrator"

    invoke-static {p0, v2}, Lcom/fusionleo/LeoX/server/LeoConfig;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    sget-object v1, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->mActionString:Lcom/fusionleo/LeoX/server/LeoConfig;

    const-string v1, "ringer_modes_silence"

    invoke-static {p0, v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    new-instance v1, Landroid/media/ToneGenerator;

    const/4 v2, 0x5

    const/16 v3, 0x55

    invoke-direct {v1, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    nop

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/media/ToneGenerator;->startTone(I)Z

    sget-object v2, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->mActionString:Lcom/fusionleo/LeoX/server/LeoConfig;

    const-string v2, "ringer_modes_sound"

    invoke-static {p0, v2}, Lcom/fusionleo/LeoX/server/LeoConfig;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static toggleRingerSoundModes(Landroid/content/Context;)V
    .locals 4

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    sget-object v1, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->mActionString:Lcom/fusionleo/LeoX/server/LeoConfig;

    const-string v1, "ringer_modes_silence"

    invoke-static {p0, v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    new-instance v1, Landroid/media/ToneGenerator;

    const/4 v2, 0x5

    const/16 v3, 0x55

    invoke-direct {v1, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    nop

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/media/ToneGenerator;->startTone(I)Z

    sget-object v2, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->mActionString:Lcom/fusionleo/LeoX/server/LeoConfig;

    const-string v2, "ringer_modes_sound"

    invoke-static {p0, v2}, Lcom/fusionleo/LeoX/server/LeoConfig;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static toggleRingerVIBRATESoundModes(Landroid/content/Context;)V
    .locals 4

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    sget-object v2, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->mActionString:Lcom/fusionleo/LeoX/server/LeoConfig;

    const-string v2, "ringer_modes_vibrator"

    invoke-static {p0, v2}, Lcom/fusionleo/LeoX/server/LeoConfig;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    new-instance v1, Landroid/media/ToneGenerator;

    const/4 v2, 0x5

    const/16 v3, 0x55

    invoke-direct {v1, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    nop

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/media/ToneGenerator;->startTone(I)Z

    sget-object v2, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->mActionString:Lcom/fusionleo/LeoX/server/LeoConfig;

    const-string v2, "ringer_modes_sound"

    invoke-static {p0, v2}, Lcom/fusionleo/LeoX/server/LeoConfig;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static toggleSPlitScreens()V
    .locals 0

    invoke-static {}, Lcom/fusionleo/LeoX/server/LeoGlobalAction$LeoAction;->access$000()V

    return-void
.end method

.method public static toggleSettingsPanel()V
    .locals 0

    invoke-static {}, Lcom/fusionleo/LeoX/server/LeoGlobalAction$LeoAction;->access$300()V

    return-void
.end method

.method public static toggleWifi(Landroid/content/Context;)V
    .locals 2

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    sget-object v1, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->mActionString:Lcom/fusionleo/LeoX/server/LeoConfig;

    const-string v1, "wifi_no"

    invoke-static {p0, v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    sget-object v1, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->mActionString:Lcom/fusionleo/LeoX/server/LeoConfig;

    const-string v1, "wifi_yes"

    invoke-static {p0, v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static triggerVirtualKeypress(I)V
    .locals 19

    move/from16 v13, p0

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v14

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    const/4 v0, 0x0

    const/16 v1, 0x15

    if-eq v13, v1, :cond_1

    const/16 v1, 0x16

    if-eq v13, v1, :cond_1

    const/16 v1, 0x13

    if-eq v13, v1, :cond_1

    const/16 v1, 0x14

    if-ne v13, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    move/from16 v17, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x6

    move/from16 v17, v0

    :goto_1
    new-instance v18, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v12, 0x101

    move-object/from16 v0, v18

    move-wide v1, v15

    move-wide v3, v15

    move/from16 v6, p0

    move/from16 v11, v17

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/fusionleo/LeoX/server/-$$Lambda$LeoGlobalAction$yRxanjMYTdPc77r9z6fzeFJ0N9w;

    invoke-direct {v3, v14, v0}, Lcom/fusionleo/LeoX/server/-$$Lambda$LeoGlobalAction$yRxanjMYTdPc77r9z6fzeFJ0N9w;-><init>(Landroid/hardware/input/InputManager;Landroid/view/KeyEvent;)V

    new-instance v4, Lcom/fusionleo/LeoX/server/-$$Lambda$LeoGlobalAction$XNnvh2aKnlNrx901-TtdnIou-qA;

    invoke-direct {v4, v14, v1}, Lcom/fusionleo/LeoX/server/-$$Lambda$LeoGlobalAction$XNnvh2aKnlNrx901-TtdnIou-qA;-><init>(Landroid/hardware/input/InputManager;Landroid/view/KeyEvent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v5, 0xa

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static volumePanel(Landroid/content/Context;)V
    .locals 3

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->adjustVolume(II)V

    return-void
.end method

.method public static wakeUpDevice(Landroid/content/Context;)V
    .locals 3

    nop

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(J)V

    :cond_0
    return-void
.end method
.method public static toggleWifiAP(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    nop

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :goto_0
    move v0, v1

    goto :goto_1

    :pswitch_0
    nop

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_0

    new-instance v0, Lcom/fusionleo/LeoX/server/LeoGlobalAction$OnStartTetheringCallback;

    invoke-direct {v0}, Lcom/fusionleo/LeoX/server/LeoGlobalAction$OnStartTetheringCallback;-><init>()V

    invoke-virtual {p0, v1, v1, v0}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static toggleclearAllNotifications(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/fusionleo/LeoX/server/LeoGlobalAction$LeoAction;->access$400()V

    sget-object v0, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->mActionString:Lcom/fusionleo/LeoX/server/LeoConfig;

    const-string v0, "clear_notification"

    invoke-static {p0, v0}, Lcom/fusionleo/LeoX/server/LeoConfig;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method



.method private static getApplicationName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    :cond_0
    const-string v2, "Unknown"

    :goto_1
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    return-object v3
.end method