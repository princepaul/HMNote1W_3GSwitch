.class public Lcom/mediatek/phone/ext/PhoneCallOptionHandlerExtension;
.super Ljava/lang/Object;
.source "PhoneCallOptionHandlerExtension.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doCallOptionHandle(Ljava/util/LinkedList;Landroid/content/Context;Landroid/content/Context;Landroid/content/Intent;Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;Lcom/mediatek/CellConnService/CellConnMgr;Lcom/android/internal/telephony/ITelephony;ZZ)Z
    .locals 1
    .param p2, "activityContext"    # Landroid/content/Context;
    .param p3, "applicationContext"    # Landroid/content/Context;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resultHandler"    # Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;
    .param p6, "cellConnMgr"    # Lcom/mediatek/CellConnService/CellConnMgr;
    .param p7, "telephonyInterface"    # Lcom/android/internal/telephony/ITelephony;
    .param p8, "isMultipleSim"    # Z
    .param p9, "is3GSwitchSupport"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/mediatek/calloption/CallOptionBaseHandler;",
            ">;",
            "Landroid/content/Context;",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;",
            "Lcom/mediatek/CellConnService/CellConnMgr;",
            "Lcom/android/internal/telephony/ITelephony;",
            "ZZ)Z"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "callOptionHandlerList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/mediatek/calloption/CallOptionBaseHandler;>;"
    const/4 v0, 0x0

    return v0
.end method
