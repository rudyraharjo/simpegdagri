<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class RolePermissionTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        /// Reset cached roles and permissions
        app()[\Spatie\Permission\PermissionRegistrar::class]->forgetCachedPermissions();

        // create permissions
        Permission::create(['name' => 'Create Eselon 1']);
        Permission::create(['name' => 'Read Eselon 1']);
        Permission::create(['name' => 'Update Eselon 1']);
        Permission::create(['name' => 'Delete Eselon 1']);

        Permission::create(['name' => 'Create Eselon 2']);
        Permission::create(['name' => 'Read Eselon 2']);
        Permission::create(['name' => 'Update Eselon 2']);
        Permission::create(['name' => 'Delete Eselon 2']);

        Permission::create(['name' => 'Create Eselon 3']);
        Permission::create(['name' => 'Read Eselon 3']);
        Permission::create(['name' => 'Update Eselon 3']);
        Permission::create(['name' => 'Delete Eselon 3']);

        Permission::create(['name' => 'Create Eselon 4']);
        Permission::create(['name' => 'Read Eselon 4']);
        Permission::create(['name' => 'Update Eselon 4']);
        Permission::create(['name' => 'Delete Eselon 4']);

        Permission::create(['name' => 'Create Staff']);
        Permission::create(['name' => 'Read Staff']);
        Permission::create(['name' => 'Update Staff']);
        Permission::create(['name' => 'Delete Staff']);

        Permission::create(['name' => 'Create Kementrian']);
        Permission::create(['name' => 'Read Kementrian']);
        Permission::create(['name' => 'Update Kementrian']);
        Permission::create(['name' => 'Delete Kementrian']);

        Permission::create(['name' => 'Create Pegawai']);
        Permission::create(['name' => 'Read Pegawai']);
        Permission::create(['name' => 'Update Pegawai']);
        Permission::create(['name' => 'Delete Pegawai']);

        Permission::create(['name' => 'Create Jabatan']);
        Permission::create(['name' => 'Read Jabatan']);
        Permission::create(['name' => 'Update Jabatan']);
        Permission::create(['name' => 'Delete Jabatan']);

        Permission::create(['name' => 'Create Unit Kerja']);
        Permission::create(['name' => 'Read Unit Kerja']);
        Permission::create(['name' => 'Update Unit Kerja']);
        Permission::create(['name' => 'Delete Unit Kerja']);

        Permission::create(['name' => 'Create Lembaga']);
        Permission::create(['name' => 'Read Lembaga']);
        Permission::create(['name' => 'Update Lembaga']);
        Permission::create(['name' => 'Delete Lembaga']);

        // - - - - Role - - - - //
        $role_su = Role::create(['name' => 'super-admin']);
        $role_su->givePermissionTo(Permission::all());

        $role_kementrian = Role::create(['name' => 'Kementrian']);
        $role_kementrian->givePermissionTo(Permission::all());

        $role_eselon1 = Role::create(['name' => 'Eselon 1']);
        $role_eselon1->givePermissionTo(
            [
                'Read Eselon 1', 'Update Eselon 1', 'Delete Eselon 1',
                'Read Eselon 2', 'Update Eselon 2', 'Delete Eselon 2',
                'Read Eselon 3', 'Update Eselon 3', 'Delete Eselon 3',
                'Read Eselon 4', 'Update Eselon 4', 'Delete Eselon 4',
                'Read Staff', 'Update Staff', 'Delete Staff',
                'Read Pegawai', 'Update Pegawai', 'Delete Pegawai',
                'Read Jabatan', 'Update Jabatan', 'Delete Jabatan',
                'Read Unit Kerja', 'Update Unit Kerja', 'Delete Unit Kerja',
                'Read Lembaga', 'Update Lembaga', 'Delete Lembaga',
            ]
        );

        $role_eselon2 = Role::create(['name' => 'Eselon 2']);
        $role_eselon2->givePermissionTo(
            [
                'Read Eselon 2', 'Update Eselon 2', 'Delete Eselon 2',
                'Read Eselon 3', 'Update Eselon 3', 'Delete Eselon 3',
                'Read Eselon 4', 'Update Eselon 4', 'Delete Eselon 4',
                'Read Staff', 'Update Staff', 'Delete Staff',
                'Read Pegawai', 'Update Pegawai', 'Delete Pegawai',
                'Read Jabatan', 'Update Jabatan', 'Delete Jabatan',
                'Read Unit Kerja', 'Update Unit Kerja', 'Delete Unit Kerja',
                'Read Lembaga', 'Update Lembaga', 'Delete Lembaga',
            ]
        );

        $role_eselon3 = Role::create(['name' => 'Eselon 3']);
        $role_eselon3->givePermissionTo(
            [
                'Read Eselon 3', 'Update Eselon 3', 'Delete Eselon 3',
                'Read Eselon 4', 'Update Eselon 4', 'Delete Eselon 4',
                'Read Staff', 'Update Staff', 'Delete Staff',
                'Read Pegawai', 'Update Pegawai', 'Delete Pegawai',
                'Read Jabatan', 'Update Jabatan', 'Delete Jabatan',
                'Read Unit Kerja', 'Update Unit Kerja', 'Delete Unit Kerja',
                'Read Lembaga', 'Update Lembaga', 'Delete Lembaga',
            ]
        );

        $role_eselon4 = Role::create(['name' => 'Eselon 4']);
        $role_eselon4->givePermissionTo(
            [
                'Read Eselon 4', 'Update Eselon 4', 'Delete Eselon 4',
                'Read Staff', 'Update Staff', 'Delete Staff',
                'Read Pegawai', 'Update Pegawai', 'Delete Pegawai',
                'Read Jabatan', 'Update Jabatan', 'Delete Jabatan',
                'Read Unit Kerja', 'Update Unit Kerja', 'Delete Unit Kerja',
                'Read Lembaga', 'Update Lembaga', 'Delete Lembaga',
            ]
        );

        $role_eselonStaff = Role::create(['name' => 'Eselon Staff']);
        $role_eselonStaff->givePermissionTo(
            [
                'Read Eselon 3',
                'Read Eselon 4',
                'Read Staff',
            ]
        );
    }
}
