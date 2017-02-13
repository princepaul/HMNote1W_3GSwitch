.class public Landroid/provider/Telephony$SIMInfo;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SIMInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Telephony$SIMInfo$ErrorCode;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"


# instance fields
.field public mColor:I

.field public mDataRoaming:I

.field public mDefaultName:Ljava/lang/String;

.field public mDispalyNumberFormat:I

.field public mDisplayName:Ljava/lang/String;

.field public mICCId:Ljava/lang/String;

.field public mNameSource:I

.field public mNumber:Ljava/lang/String;

.field public mOperator:Ljava/lang/String;

.field public mSimId:J

.field public mSlot:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3629
    const-string v0, ""

    iput-object v0, p0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    .line 3631
    const-string v0, ""

    iput-object v0, p0, Landroid/provider/Telephony$SIMInfo;->mDefaultName:Ljava/lang/String;

    .line 3635
    const-string v0, ""

    iput-object v0, p0, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    .line 3637
    const/4 v0, 0x1

    iput v0, p0, Landroid/provider/Telephony$SIMInfo;->mDispalyNumberFormat:I

    .line 3641
    const/4 v0, 0x0

    iput v0, p0, Landroid/provider/Telephony$SIMInfo;->mDataRoaming:I

    .line 3643
    const/4 v0, -0x1

    iput v0, p0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    .line 3645
    const-string v0, ""

    iput-object v0, p0, Landroid/provider/Telephony$SIMInfo;->mOperator:Ljava/lang/String;

    .line 3648
    return-void
.end method

.method public static getAllSIMCount(Landroid/content/Context;)I
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 3833
    const-string v4, "[getAllSIMCount]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3835
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3836
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "getAllSimCountAdp"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 3837
    .local v3, "method":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 3838
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3839
    .local v1, "count":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 3845
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "count":Ljava/lang/Integer;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v4

    .line 3841
    :catch_0
    move-exception v2

    .line 3842
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for getAllSimCountAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3843
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 3845
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static getAllSIMList(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3697
    const-string v5, "[getAllSIMList]"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3699
    :try_start_0
    const-string v5, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3700
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getAllSimInfoListAdp"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3701
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 3702
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3709
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 3705
    :catch_0
    move-exception v1

    .line 3706
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "createInstance:got exception for getAllSimInfoListAdp"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3707
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v3, v4

    .line 3709
    goto :goto_0
.end method

.method public static getInsertedSIMCount(Landroid/content/Context;)I
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 3811
    const-string v4, "[getInsertedSIMCount]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3813
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3814
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "getInsertedSimCountAdp"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 3815
    .local v3, "method":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 3816
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3817
    .local v1, "count":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 3823
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "count":Ljava/lang/Integer;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v4

    .line 3819
    :catch_0
    move-exception v2

    .line 3820
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for getInsertedSimCountAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3821
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 3823
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3664
    const-string v5, "[getInsertedSIMList]"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3666
    :try_start_0
    const-string v5, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3667
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getInsertedSimInfoListAdp"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3668
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 3669
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3676
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 3672
    :catch_0
    move-exception v1

    .line 3673
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "createInstance:got exception for getInsertedSimInfoListAdp"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3674
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v3, v4

    .line 3676
    goto :goto_0
.end method

.method public static getSIMInfoByICCId(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/Telephony$SIMInfo;
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "iccid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 3789
    const-string v5, "[getSIMInfoByICCId]"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3791
    :try_start_0
    const-string v5, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3792
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getSimInfoByIccIdAdp"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 3793
    .local v3, "method":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 3794
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3801
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 3797
    :catch_0
    move-exception v1

    .line 3798
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "createInstance:got exception for getSimInfoByIccIdAdp"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3799
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v2, v4

    .line 3801
    goto :goto_0
.end method

.method public static getSIMInfoById(Landroid/content/Context;J)Landroid/provider/Telephony$SIMInfo;
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "SIMId"    # J

    .prologue
    const/4 v4, 0x0

    .line 3720
    const-string v5, "[getSIMInfoById]"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3722
    :try_start_0
    const-string v5, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3723
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getSimInfoByIdAdp"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 3724
    .local v3, "method":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 3725
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3732
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 3728
    :catch_0
    move-exception v1

    .line 3729
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "createInstance:got exception for getSimInfoByIdAdp"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3730
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v2, v4

    .line 3732
    goto :goto_0
.end method

.method public static getSIMInfoByName(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/Telephony$SIMInfo;
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "SIMName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 3743
    const-string v5, "[getSIMInfoByName]"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3745
    :try_start_0
    const-string v5, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3746
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getSimInfoByNameAdp"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 3747
    .local v3, "method":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 3748
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3755
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 3751
    :catch_0
    move-exception v1

    .line 3752
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "createInstance:got exception for getSimInfoByNameAdp"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3753
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v2, v4

    .line 3755
    goto :goto_0
.end method

.method public static getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "cardSlot"    # I

    .prologue
    const/4 v4, 0x0

    .line 3766
    const-string v5, "[getSIMInfoBySlot]"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3768
    :try_start_0
    const-string v5, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3769
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getSimInfoBySlotAdp"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 3770
    .local v3, "method":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 3771
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3778
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 3774
    :catch_0
    move-exception v1

    .line 3775
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "createInstance:got exception for getSimInfoBySlotAdp"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3776
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v2, v4

    .line 3778
    goto :goto_0
.end method

.method public static getSIMInfoInstance()Landroid/provider/Telephony$SIMInfo;
    .locals 2

    .prologue
    .line 3685
    const-string v1, "[getSIMInfoInstance]"

    invoke-static {v1}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3686
    new-instance v0, Landroid/provider/Telephony$SIMInfo;

    invoke-direct {v0}, Landroid/provider/Telephony$SIMInfo;-><init>()V

    .line 3687
    .local v0, "info":Landroid/provider/Telephony$SIMInfo;
    return-object v0
.end method

.method public static insertICCId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "ICCId"    # Ljava/lang/String;
    .param p2, "slot"    # I

    .prologue
    const/4 v4, 0x0

    .line 4018
    const-string v5, "[insertICCId]"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 4020
    :try_start_0
    const-string v5, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 4021
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "addSimInfoRecordAdp"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 4022
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 4023
    const/4 v5, 0x0

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4030
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 4026
    :catch_0
    move-exception v1

    .line 4027
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "createInstance:got exception for insertIccIdAdp"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 4028
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v3, v4

    .line 4030
    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 4081
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMInfo]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4082
    return-void
.end method

.method public static setColor(Landroid/content/Context;IJ)I
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "color"    # I
    .param p2, "SIMId"    # J

    .prologue
    .line 3946
    const-string v4, "[setColor]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3948
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3949
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "setColorAdp"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3950
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 3951
    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3952
    .local v3, "result":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 3958
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "result":Ljava/lang/Integer;
    :goto_0
    return v4

    .line 3954
    :catch_0
    move-exception v1

    .line 3955
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for setColorAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3956
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3958
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static setDataRoaming(Landroid/content/Context;IJ)I
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "roaming"    # I
    .param p2, "SIMId"    # J

    .prologue
    .line 3994
    const-string v4, "[setDataRoaming]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3996
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3997
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "setDataRoamingAdp"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3998
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 3999
    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 4000
    .local v3, "result":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 4006
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "result":Ljava/lang/Integer;
    :goto_0
    return v4

    .line 4002
    :catch_0
    move-exception v1

    .line 4003
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for setDataRoamingAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 4004
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4006
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static setDefaultName(Landroid/content/Context;JLjava/lang/String;)I
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "simId"    # J
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 4041
    const-string v4, "[setDefaultName]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 4043
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 4044
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "setDefaultNameAdp"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 4045
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 4046
    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 4047
    .local v3, "result":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 4053
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "result":Ljava/lang/Integer;
    :goto_0
    return v4

    .line 4049
    :catch_0
    move-exception v1

    .line 4050
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for setDefaultNameAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 4051
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4053
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static setDefaultNameEx(Landroid/content/Context;JLjava/lang/String;J)I
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "simId"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "nameSource"    # J

    .prologue
    .line 4065
    const-string v4, "[setDefaultNameEx]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 4067
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 4068
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "setDefaultNameExAdp"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 4069
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 4070
    const/4 v4, 0x0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    const/4 v6, 0x3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 4071
    .local v3, "result":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 4077
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "result":Ljava/lang/Integer;
    :goto_0
    return v4

    .line 4073
    :catch_0
    move-exception v1

    .line 4074
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for setDefaultNameExAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 4075
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4077
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static setDispalyNumberFormat(Landroid/content/Context;IJ)I
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "format"    # I
    .param p2, "SIMId"    # J

    .prologue
    .line 3970
    const-string v4, "[setDispalyNumberFormat]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3972
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3973
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "setDispalyNumberFormatAdp"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3974
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 3975
    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3976
    .local v3, "result":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 3982
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "result":Ljava/lang/Integer;
    :goto_0
    return v4

    .line 3978
    :catch_0
    move-exception v1

    .line 3979
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for setDispalyNumberFormatAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3980
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3982
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static setDisplayName(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "SIMId"    # J

    .prologue
    .line 3873
    const-string v4, "[setDisplayName]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3875
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3876
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "setDisplayNameAdp"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3877
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 3878
    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3879
    .local v3, "result":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 3885
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "result":Ljava/lang/Integer;
    :goto_0
    return v4

    .line 3881
    :catch_0
    move-exception v1

    .line 3882
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for setDisplayNameAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3883
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3885
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static setDisplayNameEx(Landroid/content/Context;Ljava/lang/String;JJ)I
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "SIMId"    # J
    .param p4, "Source"    # J

    .prologue
    .line 3898
    const-string v4, "[setDisplayNameEx]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3900
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3901
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "setDisplayNameExAdp"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3902
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 3903
    const/4 v4, 0x0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3904
    .local v3, "result":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 3910
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "result":Ljava/lang/Integer;
    :goto_0
    return v4

    .line 3906
    :catch_0
    move-exception v1

    .line 3907
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for setDisplayNameExAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3908
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3910
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static setNumber(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "SIMId"    # J

    .prologue
    .line 3922
    const-string v4, "[setNumber]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3924
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3925
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "setNumberAdp"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3926
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 3927
    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3928
    .local v3, "result":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 3934
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "result":Ljava/lang/Integer;
    :goto_0
    return v4

    .line 3930
    :catch_0
    move-exception v1

    .line 3931
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for setNumberAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3932
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3934
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static setOperatorById(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "simId"    # J

    .prologue
    .line 3849
    const-string v4, "[setOperatorById]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3851
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3852
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "setOperatorByIdAdp"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3853
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 3854
    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3855
    .local v3, "result":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 3861
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "result":Ljava/lang/Integer;
    :goto_0
    return v4

    .line 3857
    :catch_0
    move-exception v1

    .line 3858
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for setOperatorByIdAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3859
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3861
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method
